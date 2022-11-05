
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, boost, launch-testing, openssl, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-async-web-server-cpp";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/async_web_server_cpp-release/archive/release/foxy/async_web_server_cpp/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7ca550df59d0277041dee7475aeb724829374083e9abeaf0f2ba834e6393dc21";
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
