
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support, schunk-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-pg70-support";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_pg70_support/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "71d12733360cd04b208ed6cf976217fcbaea7231298f5ad006b7dc10be3ab7b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-moveit-config prbt-support schunk-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
