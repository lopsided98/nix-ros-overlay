
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-bringup";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_bringup/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "2040bc4c27857b184781d2f98810db4a80337ddf01db76c860f09f552a3a1a32";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot bringup package includes launch files for starting denso robot nodes.'';
    license = with lib.licenses; [ mit ];
  };
}
