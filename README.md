# arvol = plexus + nexus

plexus is webized prolog and nexus is rdf core

## plexus

- using webized prolog which basically means that atoms can be IRIs
- besides top-down reasoning with `conclusion :- premise` rules, it also supports bottom-up reasoning with `conclusion :+ premise` rules
- variables are interpreted universally except for `conclusion :+ premise` conclusion-only variables which are interpreted existentially
- bottom-up reasoning can use `stable(n)` to fail if the deductive closure at level `n` is not yet stable
- bottom-up reasoning steps are performed as `step((conclusion :+ premise), premise_inst, conclusion_inst)`
- queries are posed as `true :+ premise` and answered as `answer(premise_inst)`
- inference fuses are defined as `false :+ premise` and blown as `fuse(premise_inst)` with return code 2

### rationale for bottom-up reasoning

- conclusion can be a conjunction
- conclusion can be `false` to blow an inference fuse
- conclusion can be `true` to pose a query
- conclusion can not be any other built-in
- conclusion-only variables are existentials
- performing bottom-up proof steps `step/3`
- avoiding loops that could occur with top-down reasoning

### testing plexus

- install [trealla](https://github.com/trealla-prolog/trealla?tab=readme-ov-file#building) and run
```
git clone https://github.com/eyereasoner/arvol
cd arvol/plexus
./test
```

## nexus

- nexus supports reasoning with forward rules described in rdf core as
  e.g.
```
# subclass rule
[ log:and (
    [ log:triple (var:A rdfs:subClassOf var:B)]
    [ log:triple (var:S rdf:type var:A)]
)] log:implies [ log:and (
    [ log:triple (var:S rdf:type var:B)]
)].
```

- nexus supports reasoning with backward rules described in rdf core as
  e.g.
```
# is the age of a person above some duration?
[ log:and (
    [ log:triple (var:S :ageAbove var:A)]
)] log:isImpliedBy [ log:and (
    [ log:triple (var:S :birthDay var:B)]
    [ log:triple ("" time:localTime var:D)]
    [ log:triple ((var:D var:B) math:difference var:F)]
    [ log:triple (var:F math:greaterThan var:A)]
)].
```

- nexus supports querying with queries described in rdf core as
  e.g.
```
# who is a what?
[ log:and (
    [ log:triple (var:WHO rdf:type var:WHAT)]
)] log:query [ log:and (
    [ log:triple (var:WHO rdf:type var:WHAT)]
)].
```

- a forward rule with `log:implies false` is an inference fuse

- the `var:` prefix is `<http://www.w3.org/2000/10/swap/var#>` and is used for
  variables that are interpreted universally except for forward rule
  conclusion-only variables which are interpreted existentially

- literal subjects are described as
```
[] rdf:value "aha"; :p :o.
```

### testing nexus

- install [eye](https://github.com/eyereasoner/eye/blob/master/INSTALL) and run
```
git clone https://github.com/eyereasoner/arvol
cd arvol/nexus
./test
```

## background

- personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
