
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-descriptions";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_descriptions/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "928e088bdec585aceaee70c5e847d7e4a4d3925014ca6569b50e35ccc8b72193";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot descriptions package includes URDF files for DENSO robots.'';
    license = with lib.licenses; [ mit ];
  };
}
