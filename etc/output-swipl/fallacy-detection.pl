:- op(1200, xfx, :+).

answer('urn:example:fallacy'(circular_reasoning, [supports(bible_true, god_wrote_it), supports(god_wrote_it, bible_true)])).
answer('urn:example:fallacy'(affirming_the_consequent, [implies(p, q), q, conclusion(p)])).
answer('urn:example:fallacy'(false_dilemma, [false_dilemma(either_or, with_us, against_us)])).
answer('urn:example:fallacy'(slippery_slope, [slippery_slope(allow_calculators, forget_basic_math), slippery_slope(forget_basic_math, society_collapses)])).
answer('urn:example:fallacy'(ad_hominem, [ad_hominem(johns_argument, personal_attack(john, dropout))])).
answer('urn:example:fallacy'(straw_man, [straw_man(real_argument(better_gun_regulation), distorted_argument(ban_all_guns))])).
answer('urn:example:fallacy'(post_hoc, [post_hoc_event(wore_lucky_socks, team_won)])).
answer('urn:example:fallacy'(bandwagon, [bandwagon_argument(many_people_believe_astrology, astrology_is_true)])).
answer('urn:example:fallacy'(appeal_to_authority, [appeal_to_authority(famous_actor, best_diet)])).
answer('urn:example:fallacy'(red_herring, [red_herring(argument(climate_change), distraction(economy))])).
