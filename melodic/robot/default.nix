
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, executive-smach, kdl-parser-py, urdf, robot-state-publisher, diagnostics, filters, catkin, kdl-parser, geometry, urdf-parser-plugin, ros-base, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/robot/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "4f0efd47cf90e8a1f56602612d73ba032fbb231dec3091f53b795a7d67cbe02b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher xacro kdl-parser-py executive-smach urdf robot-state-publisher diagnostics filters geometry control-msgs urdf-parser-plugin ros-base kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_base and includes ROS libaries for any robot hardware. It may not contain any GUI dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
