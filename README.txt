# better-emacs
un emacs qui ressemble a vscode

pour le faire fonctionné il faut:
    Supprimez le répertoire ".emacs" à votre racine s'il existe.
    Créez un répertoire ".emacs.d" à votre racine s'il n'existe pas.
    faire cette étape:
        $ cd ~/
        $ git clone https://git.savannah.gnu.org/git/emacs/org-mode.git
        $ cd org-mode/
        $ make autoloads
    faire un alt+x dans emacs.
    ecrivez package-install puis faite entrée. Une fois cela fais écrivez:
        monokai-theme;
        xterm-mouse-mode;
        electric-pair-mode;
        treemacs;
        tab-bar-mode;
        company;
        company-c-headers;

Les short-cuts:
    Ctrl+n ouvre une nouvelle barre d'onglets dans la mémoire tampon d'emacs;
    Ctrl+q ferme la barre d'onglets dans votre mémoire tampon emacs;
    Ctrl+t ouvre / ferme treemacs;
    Ctrl+z ajoute un nouveau dépôt à treemacs;
    Ctrl+d supprime un dépôt dans treemacs;
    Ctrl+z retour en arrière;
    Ctrl+c copié;
    Ctrl+v collé;
    Ctrl-c Ctrl-p Fixe la racine de Treemacs au projet Projectile en cours;
    Ctrl-c Ctrl-a Ajoute un nouveau projet à l'espace de travail de Treemacs;
    Ctrl-c Ctrl-r Supprime le projet sélectionné de l'espace de travail Treemacs;

Pour pouvoir copié dans emacs puis collé sur un outils autre que emacs ou scrollé avec le pad faite Ctrl+c+m.
Cela désactivera la souris.
pour réutiliser la souris refaite la commande.