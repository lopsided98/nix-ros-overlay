
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-bcap-service";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/bcap_service/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "efe083be1456bd1c3ac217153fbdffe51dae85a3927497d7d59691595e996ae6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ bcap-core message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap service package includes a node for communicating ORiN from ROS.'';
    license = with lib.licenses; [ mit ];
  };
}
