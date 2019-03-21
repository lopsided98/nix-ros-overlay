
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, actionlib-msgs, octomap, tf-conversions, geometry-msgs, boost, urdfdom-headers, moveit-core, angles, eigen-conversions, roslib, rostime, orocos-kdl, trajectory-msgs, catkin, octomap-msgs, console-bridge, std-msgs, moveit-msgs, visualization-msgs, moveit-resources, shape-msgs, kdl-parser, pluginlib, sensor-msgs, eigen-stl-containers, assimp, urdfdom, geometric-shapes, eigen }:
buildRosPackage {
  pname = "ros-kinetic-moveit-experimental";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_experimental/0.9.15-0.tar.gz;
    sha256 = "720349033315bbdef0c7f062d819dc83355b6872b1fe1f25913c541bdd64fa9b";
  };

  checkInputs = [ moveit-resources tf-conversions orocos-kdl angles ];
  propagatedBuildInputs = [ rosconsole actionlib-msgs trajectory-msgs octomap-msgs console-bridge octomap std-msgs moveit-msgs visualization-msgs geometry-msgs shape-msgs kdl-parser boost pluginlib sensor-msgs eigen-stl-containers assimp urdfdom urdfdom-headers geometric-shapes moveit-core eigen eigen-conversions rostime ];
  nativeBuildInputs = [ rosconsole actionlib-msgs trajectory-msgs catkin octomap-msgs roslib console-bridge octomap std-msgs moveit-msgs visualization-msgs geometry-msgs shape-msgs kdl-parser boost pluginlib sensor-msgs eigen-stl-containers assimp urdfdom urdfdom-headers geometric-shapes moveit-core eigen eigen-conversions rostime ];

  meta = {
    description = ''Experimental packages for moveit.'';
    #license = lib.licenses.BSD;
  };
}
