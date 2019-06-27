
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, prbt-moveit-config, xacro, schunk-description, catkin, prbt-ikfast-manipulator-plugin }:
buildRosPackage {
  pname = "ros-kinetic-prbt-pg70-support";
  version = "0.0.4-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/kinetic/prbt_pg70_support/0.0.4-1.tar.gz;
    sha256 = "c4e0d3bfa511906cf0e127184787976f68c9d8ce3a55f4bfb61ea0f40e87e73e";
  };

  propagatedBuildInputs = [ prbt-support prbt-moveit-config xacro schunk-description prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
