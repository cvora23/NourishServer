cmake_minimum_required(VERSION 3.8)
project(NourishServer)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp Server.h Server.cpp Client.h Client.cpp MyThread.h MyThread.cpp ProtocolMessage.h ProtocolMessage.cpp PubSubSystem.h PubSubChannel.h PubSubSystem.cpp GlobalMutex.h GlobalMutex.cpp PubSubChannel.cpp SynchronizedQ.h SynchronizedQ.cpp)
add_executable(NourishServer ${SOURCE_FILES})