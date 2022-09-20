
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cmake-modules, control-msgs, eigen-conversions, kdl-parser, moveit-core, pluginlib, pr2-controllers-msgs, pr2-mechanism-msgs, rosconsole, roscpp, tf, tf-conversions, urdf }:
buildRosPackage {
  pname = "ros-melodic-pr2-moveit-plugins";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_pr2-release/archive/release/melodic/pr2_moveit_plugins/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "c780573ef3305b96d9ef18be3a5fb1e8024324808209728e840457c047ecdb78";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ actionlib angles control-msgs eigen-conversions kdl-parser moveit-core pluginlib pr2-controllers-msgs pr2-mechanism-msgs rosconsole roscpp tf tf-conversions urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 specific plugins for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
