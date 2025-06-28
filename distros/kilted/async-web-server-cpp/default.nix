
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, boost, launch-testing, openssl, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-async-web-server-cpp";
  version = "2.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/async_web_server_cpp-release/archive/release/kilted/async_web_server_cpp/2.0.0-6.tar.gz";
    name = "2.0.0-6.tar.gz";
    sha256 = "ac39cf39cb405341d3450a432b9d2db1a7b4331c52361e60446a2a05fed6ed2b";
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
