
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, boost, launch-testing, openssl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-async-web-server-cpp";
  version = "2.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/async_web_server_cpp-release/archive/release/rolling/async_web_server_cpp/2.0.0-5.tar.gz";
    name = "2.0.0-5.tar.gz";
    sha256 = "f5cae168769df2e30d2c2bae30b9a28ec8560116c6b376ad573a7cbf8d10b488";
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
