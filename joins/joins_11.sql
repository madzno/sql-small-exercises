SELECT calls.when, calls.duration, contacts.first_name
FROM calls
JOIN contacts
ON calls.contact_id = contacts.id
WHERE contacts.first_name != 'William' AND contacts.last_name != 'Swift';

