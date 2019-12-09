
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, urdf, eigen-conversions, pluginlib, tf, catkin, actionlib, cmake-modules, kdl-parser, rosconsole, roscpp, angles, tf-conversions, pr2-controllers-msgs, pr2-mechanism-msgs, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-moveit-plugins";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_pr2-release/archive/release/melodic/pr2_moveit_plugins/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "c780573ef3305b96d9ef18be3a5fb1e8024324808209728e840457c047ecdb78";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core urdf eigen-conversions pluginlib tf actionlib cmake-modules kdl-parser roscpp angles pr2-controllers-msgs tf-conversions rosconsole pr2-mechanism-msgs control-msgs ];
  propagatedBuildInputs = [ moveit-core urdf eigen-conversions pluginlib tf actionlib pr2-controllers-msgs control-msgs roscpp angles tf-conversions rosconsole pr2-mechanism-msgs kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 specific plugins for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
