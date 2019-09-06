
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, kdl-parser, ros-base, control-msgs, executive-smach, catkin, urdf-parser-plugin, diagnostics, geometry, urdf, robot-state-publisher, kdl-parser-py, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-robot";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/robot/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "4f0efd47cf90e8a1f56602612d73ba032fbb231dec3091f53b795a7d67cbe02b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ filters ros-base kdl-parser control-msgs executive-smach urdf-parser-plugin diagnostics geometry urdf robot-state-publisher kdl-parser-py joint-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_base and includes ROS libaries for any robot hardware. It may not contain any GUI dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
