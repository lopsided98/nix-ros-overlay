
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, assimp, boost, catkin, code-coverage, console-bridge, eigen, eigen-stl-containers, fcl, geometric-shapes, geometry-msgs, kdl-parser, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, octomap, octomap-msgs, orocos-kdl, pkg-config, pybind11-catkin, random-numbers, rosconsole, roslib, rostime, rosunit, sensor-msgs, shape-msgs, srdfdom, std-msgs, tf2-eigen, tf2-geometry-msgs, tf2-kdl, trajectory-msgs, urdf, urdfdom, urdfdom-headers, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-core";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_core/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "cc1c034e5f09b20b275d49db1f94296d43da0cbae1550cc57bd2f1b9419061c0";
  };

  buildType = "catkin";
  checkInputs = [ angles code-coverage moveit-resources-panda-moveit-config moveit-resources-pr2-description orocos-kdl rosunit tf2-kdl ];
  propagatedBuildInputs = [ assimp boost console-bridge eigen eigen-stl-containers fcl geometric-shapes geometry-msgs kdl-parser moveit-msgs octomap octomap-msgs pybind11-catkin random-numbers rosconsole roslib rostime sensor-msgs shape-msgs srdfdom std-msgs tf2-eigen tf2-geometry-msgs trajectory-msgs urdf urdfdom urdfdom-headers visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Core libraries used by MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
