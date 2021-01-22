
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support, schunk-description, xacro }:
buildRosPackage {
  pname = "ros-kinetic-prbt-pg70-support";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/prbt_grippers-release/archive/release/kinetic/prbt_pg70_support/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "c4e0d3bfa511906cf0e127184787976f68c9d8ce3a55f4bfb61ea0f40e87e73e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-moveit-config prbt-support schunk-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
