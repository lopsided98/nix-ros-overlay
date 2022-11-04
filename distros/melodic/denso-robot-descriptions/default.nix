
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-descriptions";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_descriptions/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "d33cc562bd9f958255926e19a3854aeda0b20a7e54347e96481f73adf2b50e2d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot descriptions package includes URDF files for DENSO robots.'';
    license = with lib.licenses; [ mit ];
  };
}
