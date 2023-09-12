
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-create-description";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/foxy/create_description/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "87edaf6858d2dd0fe991d7f63bdcfde4f018a570a63e340c61f32a0196196bf3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Robot URDF descriptions for create_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
