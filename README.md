# 🏎 LMU Lap Comparator

Comparez automatiquement vos meilleurs temps au tour avec vos potes sur **Le Mans Ultimate**.

---

## 📥 Téléchargement

👉 **[Télécharger LMU_Comparator_Setup.exe](https://github.com/paulbegue91-gif/lmu-comparator-app/releases/latest)**

Double-cliquez sur le fichier téléchargé et suivez les étapes d'installation. Un raccourci **LMU Lap Comparator** est créé sur votre bureau.

---

## ⚙️ Premier lancement

1. Double-cliquez sur **LMU Lap Comparator** sur le bureau
2. Entrez votre **pseudo exact LMU** (tel qu'il apparaît dans vos sessions)
3. Vérifiez le **dossier Results** — par défaut :
   ```
   H:\SteamLibrary\steamapps\common\Le Mans Ultimate\UserData\Log\Results
   ```
4. Cliquez **Ouvrir l'interface →**

✅ Votre navigateur s'ouvre avec l'interface — vos temps sont synchronisés automatiquement.

---

## 🔄 Comment ça fonctionne

```
Vos fichiers XML (LMU)
        ↓
  LMU Lap Comparator
        ↓
   Serveur partagé  ←→  Vos potes font pareil
        ↓
  Interface web avec tous les temps comparés
```

- L'app lit vos fichiers de résultats LMU en local
- Extrait vos **meilleurs temps** par circuit et par catégorie
- Les envoie sur le serveur partagé
- Récupère les temps de tous les autres pilotes
- **Sync automatique toutes les 60 secondes**

---

## 📊 L'interface

| Onglet | Description |
|--------|-------------|
| **Tableau** | Meilleurs temps par circuit, tous les pilotes côte à côte. Filtres par catégorie (Hypercar / GT3 / LMP2 / LMP3) et par circuit. ★ = meilleur temps avec logo constructeur |
| **Podium & Classement** | Classement général style F1 (25-18-15 pts) + podium 🥇🥈🥉 détaillé par circuit avec écarts |
| **Graphiques** | Barres (temps absolus) + courbes (écarts au meilleur) |
| **Pilotes en ligne** | Carte de chaque pote avec date de dernière sync |

---

## 👥 Inviter un pote

Envoyez-lui simplement ce lien :

👉 **https://github.com/paulbegue91-gif/lmu-comparator-app/releases/latest**

Il installe, entre son pseudo LMU, et ses temps apparaissent automatiquement dans votre tableau.

**Aucune création de compte. Aucun mot de passe. Aucune configuration réseau.**

---

## 🗑️ Supprimer un pilote du tableau

Ouvrez cette URL dans votre navigateur en remplaçant le nom :

```
https://lmu-comparator-server.onrender.com/delete/NOM DU PILOTE
```

Exemple :
```
https://lmu-comparator-server.onrender.com/delete/Paul Begue
```

---

## ❓ Problèmes fréquents

**Mes temps n'apparaissent pas dans le bon filtre (Hypercar, GT3...)**
→ Allez sur `https://lmu-comparator-server.onrender.com/reset` pour vider les anciennes données puis cliquez **Sync** dans l'app

**"Serveur hors ligne"**
→ Le serveur gratuit se met en veille après 15 min d'inactivité. La première sync peut prendre ~50 secondes, c'est normal.

**Mon pseudo n'est pas reconnu**
→ Vérifiez les majuscules et espaces — le pseudo doit être identique à celui dans vos sessions LMU

**L'interface ne s'ouvre pas**
→ Relancez l'app depuis le bureau — elle ouvre automatiquement votre navigateur par défaut sur `http://localhost:5731`

---

## 🛠 Stack technique

- **App desktop** : Python + Tkinter (fenêtre config) + serveur HTTP local
- **Interface** : HTML / CSS / JS — s'ouvre dans votre navigateur
- **Drapeaux** : flagcdn.com
- **Logos constructeurs** : Wikipedia Commons
- **Serveur partagé** : Flask hébergé sur Render (gratuit)
- **Build** : PyInstaller + Inno Setup via GitHub Actions
