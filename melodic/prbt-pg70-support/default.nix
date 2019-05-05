
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, prbt-moveit-config, xacro, schunk-description, catkin, prbt-ikfast-manipulator-plugin }:
buildRosPackage {
  pname = "ros-melodic-prbt-pg70-support";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_pg70_support/0.0.3-1.tar.gz;
    sha256 = "88d2e623f7b6f8bd400077fb29ec9ec4a4a20747c2100a593c0e7d9400fa8045";
  };

  propagatedBuildInputs = [ prbt-support prbt-moveit-config xacro schunk-description prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
