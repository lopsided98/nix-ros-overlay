
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, boost, launch-testing, openssl, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-async-web-server-cpp";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/async_web_server_cpp-release/archive/release/kilted/async_web_server_cpp/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "aca33bff93fc594339358ee8975ada2703104bfbc6b5c2d2135e21364be8a53a";
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
