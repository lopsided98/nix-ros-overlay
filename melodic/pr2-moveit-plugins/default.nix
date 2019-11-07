
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, pr2-mechanism-msgs, kdl-parser, rosconsole, control-msgs, pluginlib, cmake-modules, catkin, roscpp, urdf, moveit-core, actionlib, tf-conversions, angles, eigen-conversions, tf }:
buildRosPackage {
  pname = "ros-melodic-pr2-moveit-plugins";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_pr2-release/archive/release/melodic/pr2_moveit_plugins/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "c780573ef3305b96d9ef18be3a5fb1e8024324808209728e840457c047ecdb78";
  };

  buildType = "catkin";
  buildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs kdl-parser pluginlib rosconsole cmake-modules control-msgs roscpp urdf moveit-core actionlib angles tf-conversions eigen-conversions tf ];
  propagatedBuildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs kdl-parser rosconsole control-msgs pluginlib roscpp urdf moveit-core actionlib tf-conversions angles eigen-conversions tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PR2 specific plugins for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
