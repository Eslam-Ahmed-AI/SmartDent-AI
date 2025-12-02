# setup.ps1
Write-Host "🚀 Setting up SmartDent-AI Project Structure..." -ForegroundColor Green

# إنشاء المجلدات
$folders = @(
    "stage1_logic_seed",
    "stage2_intelligence/tests",
    "stage3_memory/data/tests",
    "stage4_tools/tools/tests",
    "stage5_web_interface/components/static/tests",
    "stage6_multi_agent/agents/tests",
    "stage7_rag_knowledge/knowledge_base/embeddings/tests",
    "stage7_rag_knowledge/knowledge_base/documents",
    "stage7_rag_knowledge/knowledge_base/vector_store",
    "stage8_agi_optimization/monitoring/tests",
    "shared",
    "docs",
    "scripts",
    "config",
    "tests/integration",
    "tests/e2e",
    "tests/performance",
    ".github/workflows",
    ".github/ISSUE_TEMPLATE"
)

foreach ($folder in $folders) {
    New-Item -Path $folder -ItemType Directory -Force | Out-Null
}

# إنشاء ملفات __init__.py
$initFiles = @(
    "shared/__init__.py",
    "stage4_tools/tools/__init__.py",
    "stage6_multi_agent/agents/__init__.py"
)

foreach ($file in $initFiles) {
    New-Item -Path $file -ItemType File -Force | Out-Null
}

Write-Host "✅ Project structure created successfully!" -ForegroundColor Green