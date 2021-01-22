
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openssl, pythonPackages, roslib, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-async-web-server-cpp";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/async_web_server_cpp-release/archive/release/melodic/async_web_server_cpp/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6e4642671a9b19d4bcf46d080a17c1873a9d3c40905150d93684eb09d5efd346";
  };

  buildType = "catkin";
  buildInputs = [ openssl ];
  checkInputs = [ pythonPackages.websocket_client roslib rospy rostest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Asynchronous Web/WebSocket Server in C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
