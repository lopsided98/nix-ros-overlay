
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-bringup";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_bringup/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "f1f78b5a3e61a22ff061266bccf2d6d252be20af95fa280a84788903e79cfd75";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot bringup package includes launch files for starting denso robot nodes.'';
    license = with lib.licenses; [ mit ];
  };
}
