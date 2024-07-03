# README
A common task is to rollback the last migration. For example, if you made a mistake in it and wish to correct it. Rather than tracking down the version number associated with the previous migration you can run:

$ bin/rails db:rollback

This will rollback the latest migration, either by reverting the change method or by running the down method. If you need to undo several migrations you can provide a STEP parameter:

$ bin/rails db:rollback STEP=3

The last 3 migrations will be reverted.


Les users stories : tout ce que notre app peut faire.
--> On parle a une personne non technique.

LES ERREURS SONT LES PLUS GRANDS PROFESSEURS !
