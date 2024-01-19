
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, boost, launch-testing, openssl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-async-web-server-cpp";
  version = "2.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/async_web_server_cpp-release/archive/release/rolling/async_web_server_cpp/2.0.0-4.tar.gz";
    name = "2.0.0-4.tar.gz";
    sha256 = "e234256bb0053081f54337a8c79c9c42770bcfa71da04cead7ffa254b48b9b90";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake-ros openssl ];
  checkInputs = [ launch-testing python3Packages.websocket-client ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Asynchronous Web/WebSocket Server in C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
