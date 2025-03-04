# eyeproof

- proof engine using webized prolog which basically means that atoms can be IRIs
- besides top-down reasoning with `conclusion :- premise` rules, it also does bottom-up reasoning with `conclusion :+ premise` rules
- variables are interpreted universally except for `conclusion :+ premise` conclusion-only variables which are interpreted existentially
- bottom-up reasoning can use `stable(n)` to fail if the deductive closure at level `n` is not yet stable
- bottom-up reasoning steps are performed as `bus((conclusion_inst :+ premise_inst))`
- queries are posed as `true :+ premise` and answered as `bus((true :+ premise_inst))`
- inference fuses are defined as `false :+ premise` and blown as `bus(false :+ premise_inst))` with return code 2

## rationale for bottom-up reasoning with `conclusion :+ premise` rules

- conclusion can be a conjunction
- conclusion can be `false` to blow an inference fuse
- conclusion can be `true` to pose a query
- conclusion can not be any other built-in
- conclusion-only variables are existentials
- performing bottom-up steps `bus/1`
- avoiding loops that could occur with top-down reasoning

## installation and test

- install [Scryer Prolog](https://github.com/mthom/scryer-prolog#installing-scryer-prolog)
  and run the tests
    ```
    git clone https://github.com/eyereasoner/eyeproof
    cd eyeproof/etc
    ./test
    ```

## background

- personal notes by Tim Berners-Lee: [Design Issues](https://www.w3.org/DesignIssues/)
- book of Markus Triska: [The Power of Prolog](https://www.metalevel.at/prolog)
