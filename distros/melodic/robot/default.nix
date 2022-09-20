
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, diagnostics, executive-smach, filters, geometry, joint-state-publisher, kdl-parser, kdl-parser-py, robot-state-publisher, ros-base, urdf, urdf-parser-plugin, xacro }:
buildRosPackage {
  pname = "ros-melodic-robot";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/robot/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "4f0efd47cf90e8a1f56602612d73ba032fbb231dec3091f53b795a7d67cbe02b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-msgs diagnostics executive-smach filters geometry joint-state-publisher kdl-parser kdl-parser-py robot-state-publisher ros-base urdf urdf-parser-plugin xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_base and includes ROS libaries for any robot hardware. It may not contain any GUI dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
