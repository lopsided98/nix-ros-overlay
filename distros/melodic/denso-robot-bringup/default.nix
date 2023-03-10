
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-bringup";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_bringup/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "5181e4afdcc043c44784595a185e0b77b03032913cfdda27daca580b19bc9248";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot bringup package includes launch files for starting denso robot nodes.'';
    license = with lib.licenses; [ mit ];
  };
}
