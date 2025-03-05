:- op(1200, xfx, :+).

bus((true:+'urn:example:fallacy'(circular_reasoning, [supports(bible_true, god_wrote_it), supports(god_wrote_it, bible_true)]))).
bus((true:+'urn:example:fallacy'(affirming_the_consequent, [implies(p, q), q, conclusion(p)]))).
bus((true:+'urn:example:fallacy'(false_dilemma, [false_dilemma(either_or, with_us, against_us)]))).
bus((true:+'urn:example:fallacy'(slippery_slope, [slippery_slope(allow_calculators, forget_basic_math), slippery_slope(forget_basic_math, society_collapses)]))).
bus((true:+'urn:example:fallacy'(ad_hominem, [ad_hominem(johns_argument, personal_attack(john, dropout))]))).
bus((true:+'urn:example:fallacy'(straw_man, [straw_man(real_argument(better_gun_regulation), distorted_argument(ban_all_guns))]))).
bus((true:+'urn:example:fallacy'(post_hoc, [post_hoc_event(wore_lucky_socks, team_won)]))).
bus((true:+'urn:example:fallacy'(bandwagon, [bandwagon_argument(many_people_believe_astrology, astrology_is_true)]))).
bus((true:+'urn:example:fallacy'(appeal_to_authority, [appeal_to_authority(famous_actor, best_diet)]))).
bus((true:+'urn:example:fallacy'(red_herring, [red_herring(argument(climate_change), distraction(economy))]))).
