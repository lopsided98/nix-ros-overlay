
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, bcap-core, catkin, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-bcap-service";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/bcap_service/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "c0752cf726d2b82e1e749a526fd8b49a1740c99702a8c6c55428fa05cb07be33";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation bcap-core roscpp ];
  propagatedBuildInputs = [ std-msgs message-runtime bcap-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap service package includes a node for communicating ORiN from ROS.'';
    license = with lib.licenses; [ mit ];
  };
}
