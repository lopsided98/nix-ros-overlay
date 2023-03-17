
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-descriptions";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_descriptions/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "eecbd5532ec6809d1f98a878298fbf4e84a0a31f88152efdb9f8115a3698e5c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot descriptions package includes URDF files for DENSO robots.'';
    license = with lib.licenses; [ mit ];
  };
}
