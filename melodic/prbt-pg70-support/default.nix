
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, prbt-moveit-config, xacro, schunk-description, catkin, prbt-ikfast-manipulator-plugin }:
buildRosPackage {
  pname = "ros-melodic-prbt-pg70-support";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_pg70_support/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "71d12733360cd04b208ed6cf976217fcbaea7231298f5ad006b7dc10be3ab7b3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ prbt-support prbt-moveit-config xacro schunk-description prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
