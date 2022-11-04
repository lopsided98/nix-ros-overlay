
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-bringup";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_bringup/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "3ff3ec7024f60ea109a6bb0225bf60c7dd3805d648809e06f3df72eb380ac07b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot bringup package includes launch files for starting denso robot nodes.'';
    license = with lib.licenses; [ mit ];
  };
}
