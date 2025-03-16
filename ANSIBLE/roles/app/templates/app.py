from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Configure la connexion à PostgreSQL via SQLAlchemy
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql+psycopg2://cytech_usr:cytech@192.168.100.145/cytech'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

# Définir le modèle de la table pour correspondre à la définition SQL
class Tablecytech(db.Model):
    __tablename__ = 'cytech'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text, nullable=True)  # Ajusté à TEXT et nullable pour correspondre à la table existante

# Route pour récupérer les données avec gestion d’erreurs
@app.route('/name', methods=['GET'])
def get_exemples():
    try:
        exemples = Tablecytech.query.all()
        return jsonify([exemple.name for exemple in exemples])
    except Exception as e:
        return jsonify({"error": f"Failed to fetch data: {str(e)}"}), 500

if __name__ == '__main__':
    with app.app_context():
        db.create_all()  # Crée la table si elle n’existe pas (utile si la connexion change)
    app.run(host='0.0.0.0', port=8080, debug=True)  # Écoute sur toutes les interfaces