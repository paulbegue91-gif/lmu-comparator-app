# 🏎 LMU Lap Comparator

Comparez automatiquement vos meilleurs temps au tour avec vos potes sur **Le Mans Ultimate**.

---

## 📥 Installation

### 1. Télécharger l'installeur

👉 Allez dans l'onglet **[Actions](../../actions)** → cliquez sur le build le plus récent → section **Artifacts** → téléchargez **LMU_Comparator_Setup**

### 2. Installer l'app

Double-cliquez sur `LMU_Comparator_Setup.exe` et suivez les étapes. Un raccourci **LMU Lap Comparator** est créé sur votre bureau.

---

## ⚙️ Configuration (une seule fois)

1. Double-cliquez sur **LMU Lap Comparator** sur le bureau
2. Entrez votre **pseudo exact LMU** (tel qu'il apparaît dans vos sessions)
3. Vérifiez le **dossier Results** — par défaut :
   ```
   H:\SteamLibrary\steamapps\common\Le Mans Ultimate\UserData\Log\Results
   ```
   Si votre Steam est sur un autre disque, cliquez **"..."** pour le changer
4. Cliquez **"Ouvrir l'interface →"**

✅ Votre navigateur s'ouvre avec l'interface — vos temps sont synchronisés automatiquement.

---

## 🔄 Comment ça fonctionne

```
Vos fichiers XML (LMU)
        ↓
  LMU Lap Comparator
        ↓
   Serveur en ligne  ←→  Vos potes font pareil
        ↓
  Interface web avec tous les temps comparés
```

- L'app lit vos fichiers de résultats LMU en local
- Extrait vos **meilleurs temps** par circuit
- Les envoie sur le serveur partagé
- Récupère les temps de tous les autres pilotes
- **Sync automatique toutes les 60 secondes**

---

## 📊 L'interface

| Onglet | Description |
|--------|-------------|
| **Tableau** | Meilleurs temps par circuit, tous les pilotes côte à côte. ★ = meilleur temps |
| **Graphiques** | Barres (temps absolus) + courbes (écarts au meilleur) |
| **Pilotes en ligne** | Carte de chaque pote avec date de dernière sync |
| **Configuration** | Modifier votre pseudo ou dossier Results |

---

## 👥 Inviter un pote

Envoyez-lui simplement le lien de téléchargement de l'installeur. Il installe, entre son pseudo LMU, et ses temps apparaissent automatiquement dans votre tableau.

**Aucune création de compte. Aucun mot de passe. Aucune configuration réseau.**

---

## ❓ Problèmes fréquents

**Mes temps n'apparaissent pas**
→ Vérifiez que votre pseudo est exactement comme dans LMU (majuscules comprises)
→ Vérifiez le chemin du dossier Results dans la config

**"Serveur hors ligne"**
→ Le serveur gratuit se met en veille après 15 min d'inactivité. La première sync peut prendre ~50 secondes, c'est normal.

**L'interface ne s'ouvre pas**
→ Relancez l'app depuis le bureau — elle ouvre automatiquement votre navigateur par défaut

---

## 🛠 Stack technique

- **App desktop** : Python + Tkinter (fenêtre config) + serveur HTTP local
- **Interface** : HTML / CSS / JS pur — s'ouvre dans votre navigateur
- **Serveur partagé** : Flask hébergé sur Render (gratuit)
- **Build** : PyInstaller + Inno Setup via GitHub Actions
