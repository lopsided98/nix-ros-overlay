
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nodelet, roscpp, roslint, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-udp-com";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_com-release/archive/release/noetic/udp_com/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "aac456e8ac59b6a472358d527eebd3be84021964c48e602adf85d9a1100a9909";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ message-generation message-runtime nodelet roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic UDP communication ROS package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
