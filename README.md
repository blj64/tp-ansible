# tp-ansible
Dans le dossier terraform faire:
  terraform init
  terraform apply

Puis dans ansible faire:
  ansible-playbook -i inventory.ini playbook.yml
  
/!\Le script ansible ne marche pas pour l'app. La BDD marche normalement.
  Je n'ai pas reussi a faire fonctionner cette instruction: Récupérer les données de l'API Flask
