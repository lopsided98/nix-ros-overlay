
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openssl, pythonPackages, roslib, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-async-web-server-cpp";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/async_web_server_cpp-release/archive/release/melodic/async_web_server_cpp/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "45d13cce4a77b0e5e67b9ed7be20691e0425861c5a48a653d4a3bdff997840c6";
  };

  buildType = "catkin";
  checkInputs = [ roslib rospy rostest ];
  propagatedBuildInputs = [ boost openssl pythonPackages.websocket_client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Asynchronous Web/WebSocket Server in C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
