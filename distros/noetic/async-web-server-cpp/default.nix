
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openssl, python3Packages, roslib, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-async-web-server-cpp";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/async_web_server_cpp-release/archive/release/noetic/async_web_server_cpp/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "9656bf97c0fc534351f9d3914cd7eb40b690c9272d02733ab05b62486663d30e";
  };

  buildType = "catkin";
  buildInputs = [ catkin openssl ];
  checkInputs = [ python3Packages.websocket-client roslib rospy rostest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Asynchronous Web/WebSocket Server in C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
