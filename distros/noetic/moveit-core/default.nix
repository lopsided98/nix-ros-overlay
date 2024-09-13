
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, assimp, boost, bullet, catkin, console-bridge, eigen, eigen-stl-containers, fcl, gbenchmark, geometric-shapes, geometry-msgs, kdl-parser, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, octomap, octomap-msgs, orocos-kdl, pkg-config, pluginlib, pybind11-catkin, python3, random-numbers, rosconsole, roslib, rostest, rostime, rosunit, ruckig, sensor-msgs, shape-msgs, srdfdom, std-msgs, tf2-eigen, tf2-geometry-msgs, tf2-kdl, trajectory-msgs, urdf, urdfdom, urdfdom-headers, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-core";
  version = "1.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_core/1.1.15-1.tar.gz";
    name = "1.1.15-1.tar.gz";
    sha256 = "b6b59adf74114c3ed33b617a536d1b7681edcc40d564d963608ccfebe89daf5b";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin pkg-config ];
  checkInputs = [ gbenchmark moveit-resources-panda-moveit-config moveit-resources-pr2-description orocos-kdl rostest rosunit tf2-kdl ];
  propagatedBuildInputs = [ assimp boost bullet console-bridge eigen eigen-stl-containers fcl geometric-shapes geometry-msgs kdl-parser moveit-msgs octomap octomap-msgs pluginlib pybind11-catkin python3 random-numbers rosconsole roslib rostime ruckig sensor-msgs shape-msgs srdfdom std-msgs tf2-eigen tf2-geometry-msgs trajectory-msgs urdf urdfdom urdfdom-headers visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = "Core libraries used by MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
