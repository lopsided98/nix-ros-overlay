
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, boost, launch-testing, openssl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-async-web-server-cpp";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/async_web_server_cpp-release/archive/release/rolling/async_web_server_cpp/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "2e2b504ca04ed1ec084118da6c8f327babd1c737056dbb8f8d6ddc0d972b504c";
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
