
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-support, prbt-moveit-config, xacro, schunk-description, catkin, prbt-ikfast-manipulator-plugin }:
buildRosPackage {
  pname = "ros-kinetic-prbt-pg70-support";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/kinetic/prbt_pg70_support/0.0.3-0.tar.gz;
    sha256 = "5c9303d400b568dcfb55fd619667492ea9a4f7b125694a1840280c765684c500";
  };

  propagatedBuildInputs = [ prbt-support prbt-moveit-config xacro schunk-description prbt-ikfast-manipulator-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
