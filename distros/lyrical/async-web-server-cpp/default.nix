
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, boost, launch-testing, openssl, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-async-web-server-cpp";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/async_web_server_cpp-release/archive/release/lyrical/async_web_server_cpp/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "31f8ea58a60ce53e7ebfad88787651aa0ddad1610a32af1fc55b6e2a5ce507c3";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake-ros openssl ];
  checkInputs = [ launch-testing python3Packages.websocket-client ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Asynchronous Web/WebSocket Server in C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
