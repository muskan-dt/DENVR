#!/bin/bash

echo "=================================================="
echo "🚀 STARTING ENVR11 TRAVEL AGENT ML PLATFORM"
echo "=================================================="

# Check if we're in the right directory
if [ ! -f "backend/travel_ml_engine.py" ]; then
    echo "❌ ERROR: Please run from ~/ZENVR_REPO directory"
    exit 1
fi

echo "🔧 Starting Quantum ML Engine..."
cd backend
python travel_ml_engine.py &
BACKEND_PID=$!

echo "⏳ Waiting for backend to initialize..."
sleep 5

echo "=================================================="
echo "✅ ENVR11 Platform Started!"
echo ""
echo "🌐 Access Points:"
echo "• ML Backend API: http://localhost:8000"
echo "• API Documentation: http://localhost:8000/docs"
echo "• Quantum Dashboard: http://localhost:8000/dashboard"
echo ""
echo "📊 To check status: curl http://localhost:8000/health"
echo "🛑 To stop: Press Ctrl+C"
echo "=================================================="

# Keep running until interrupted
trap "kill $BACKEND_PID 2>/dev/null; echo '🛑 Backend stopped'; exit" INT TERM
wait $BACKEND_PID
