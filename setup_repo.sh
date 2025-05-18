#!/bin/bash

# Create directories
mkdir -p Courses/DeepLearningAI
mkdir -p Video_Tutorials/RAG
mkdir -p Video_Tutorials/Fine_Tuning
mkdir -p Micro_Projects/Outputs
mkdir -p Kaggle
mkdir -p Deep_Dives
mkdir -p Notes/Course_Summaries
mkdir -p Notes/Theory

# Create README.md files for each directory
touch README.md
touch Courses/README.md
touch Courses/DeepLearningAI/README.md
touch Video_Tutorials/README.md
touch Video_Tutorials/RAG/README.md
touch Video_Tutorials/Fine_Tuning/README.md
touch Micro_Projects/README.md
touch Kaggle/README.md
touch Deep_Dives/README.md
touch Notes/README.md
touch Notes/Course_Summaries/README.md
touch Notes/Theory/README.md

# Create additional files
touch .gitignore
touch LICENSE

# Create .gitignore content
cat > .gitignore << 'EOF'
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*$py.class

# Distribution / packaging
dist/
build/
*.egg-info/

# Jupyter Notebook
.ipynb_checkpoints

# Virtual environments
venv/
env/
ENV/

# Local development settings
.env
.vscode/
.idea/

# OS specific files
.DS_Store
Thumbs.db

# Large data files
*.csv
*.xlsx
*.h5
*.pkl
*.pt
*.pth
*.bin

# Exceptions
!requirements.txt
EOF

# Create README.md content
cat > README.md << 'EOF'
# ML Practice 

This repository contains my practice projects, course notes, and learning materials for machine learning, with a focus on PyTorch and TensorFlow.

## Repository Structure

- **Courses/**: Notes and exercises from online courses
- **Video_Tutorials/**: Code from video tutorials
- **Micro_Projects/**: Small projects to practice specific ML concepts
- **Kaggle/**: Kaggle competition entries and practice notebooks
- **Deep_Dives/**: In-depth exploration of ML concepts
- **Notes/**: Theory notes and course summaries

## Learning Goals

- Master PyTorch and TensorFlow frameworks
- Gain practical experience with RAG and fine-tuning LLMs
- Develop a portfolio of ML projects
- Prepare for ML engineering roles

## License

See the [LICENSE](LICENSE) file for details.
EOF

# Add all files to staging area
git add .

# Commit the files
git commit -m "Set up ML practice repository structure"

echo "Repository structure created successfully! Now run these commands to push to GitHub:"
echo "git remote add origin https://github.com/your-username/ML-Practice.git"
echo "git push -u origin main"