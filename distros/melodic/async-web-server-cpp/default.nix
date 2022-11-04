
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openssl, pythonPackages, roslib, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-async-web-server-cpp";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/async_web_server_cpp-release/archive/release/melodic/async_web_server_cpp/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "f1094d659202fb2ed57ef45efe72c8748e7086c122be0f064e3804657c14d630";
  };

  buildType = "catkin";
  buildInputs = [ catkin openssl ];
  checkInputs = [ pythonPackages.websocket_client roslib rospy rostest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Asynchronous Web/WebSocket Server in C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
