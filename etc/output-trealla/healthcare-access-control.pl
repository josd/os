:- op(1200, xfx, :+).

bus((user_permission(alice,view_patient_records,patient1):+user_role(alice,doctor),role_permission(doctor,view_patient_records),assigned_patient(alice,patient1))).
bus((user_permission(alice,view_patient_records,patient2):+user_role(alice,doctor),role_permission(doctor,view_patient_records),assigned_patient(alice,patient2))).
bus((user_permission(bob,view_patient_records,patient2):+user_role(bob,nurse),role_permission(nurse,view_patient_records),assigned_patient(bob,patient2))).
bus((user_permission(alice,view_patient_records,patient3):+user_role(alice,doctor),role_permission(doctor,view_patient_records),emergency(patient3))).
bus((user_permission(bob,view_patient_records,patient3):+user_role(bob,nurse),role_permission(nurse,view_patient_records),emergency(patient3))).
bus((user_permission(alice,edit_patient_records,patient1):+user_role(alice,doctor),role_permission(doctor,edit_patient_records), \+denied(alice,edit_patient_records),assigned_patient(alice,patient1))).
bus((user_permission(alice,edit_patient_records,patient2):+user_role(alice,doctor),role_permission(doctor,edit_patient_records), \+denied(alice,edit_patient_records),assigned_patient(alice,patient2))).
bus((user_permission(alice,access_medications,patient1):+user_role(alice,doctor),role_permission(doctor,access_medications), \+denied(alice,access_medications),assigned_patient(alice,patient1))).
bus((user_permission(alice,access_medications,patient2):+user_role(alice,doctor),role_permission(doctor,access_medications), \+denied(alice,access_medications),assigned_patient(alice,patient2))).
bus((user_permission(bob,access_medications,patient2):+user_role(bob,nurse),role_permission(nurse,access_medications), \+denied(bob,access_medications),assigned_patient(bob,patient2))).
bus((true:+'urn:example:userPermission'(alice,view_patient_records,patient1))).
bus((true:+'urn:example:userPermission'(alice,edit_patient_records,patient1))).
bus((true:+'urn:example:userPermission'(alice,access_medications,patient1))).
bus((true:+'urn:example:userPermission'(bob,view_patient_records,patient2))).
bus((true:+ \+'urn:example:userPermission'([alice,7],edit_patient_records,patient1))).
bus((true:+'urn:example:userPermission'(alice,view_patient_records,patient3))).
bus((true:+'urn:example:userPermission'(bob,view_patient_records,patient3))).
bus((true:+ \+'urn:example:userPermission'(dave,view_patient_records,patient1))).
