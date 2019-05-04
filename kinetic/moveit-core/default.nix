
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, octomap, tf-conversions, geometry-msgs, boost, pkg-config, urdfdom-headers, angles, eigen-conversions, rostime, roslib, orocos-kdl, trajectory-msgs, catkin, octomap-msgs, console-bridge, urdf, std-msgs, moveit-msgs, visualization-msgs, moveit-resources, shape-msgs, kdl-parser, sensor-msgs, eigen-stl-containers, srdfdom, random-numbers, assimp, urdfdom, geometric-shapes, eigen, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-moveit-core";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_core/0.9.15-0.tar.gz;
    sha256 = "20ea70a20528c25d48d6ea0c58d6e23ea26b1d92efb231425e92deb15862d0bd";
  };

  buildInputs = [ rosconsole octomap geometry-msgs boost urdfdom-headers eigen-conversions roslib rostime trajectory-msgs octomap-msgs console-bridge urdf std-msgs moveit-msgs visualization-msgs shape-msgs kdl-parser sensor-msgs eigen-stl-containers srdfdom random-numbers assimp urdfdom geometric-shapes eigen ];
  checkInputs = [ moveit-resources orocos-kdl angles tf-conversions rosunit ];
  propagatedBuildInputs = [ rosconsole octomap geometry-msgs boost urdfdom-headers eigen-conversions rostime trajectory-msgs octomap-msgs console-bridge urdf std-msgs moveit-msgs visualization-msgs kdl-parser sensor-msgs eigen-stl-containers srdfdom random-numbers assimp urdfdom geometric-shapes eigen ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Core libraries used by MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
