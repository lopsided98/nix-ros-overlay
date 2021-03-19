
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, assimp, boost, bullet, catkin, console-bridge, eigen, eigen-conversions, eigen-stl-containers, fcl, geometric-shapes, geometry-msgs, kdl-parser, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, octomap, octomap-msgs, orocos-kdl, pkg-config, random-numbers, rosconsole, roslib, rostime, rosunit, sensor-msgs, shape-msgs, srdfdom, std-msgs, tf2-eigen, tf2-geometry-msgs, tf2-kdl, trajectory-msgs, urdf, urdfdom, urdfdom-headers, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-core";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_core/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c04dc536858fcc83fa175042bdeb8aef2d8e078ebe6871e4a37cfa940c0c5b4c";
  };

  buildType = "catkin";
  checkInputs = [ angles moveit-resources-panda-moveit-config moveit-resources-pr2-description orocos-kdl rosunit tf2-kdl ];
  propagatedBuildInputs = [ assimp boost bullet console-bridge eigen eigen-conversions eigen-stl-containers fcl geometric-shapes geometry-msgs kdl-parser moveit-msgs octomap octomap-msgs random-numbers rosconsole roslib rostime sensor-msgs shape-msgs srdfdom std-msgs tf2-eigen tf2-geometry-msgs trajectory-msgs urdf urdfdom urdfdom-headers visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Core libraries used by MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
