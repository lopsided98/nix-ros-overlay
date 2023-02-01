
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, assimp, boost, bullet, catkin, console-bridge, eigen, eigen-stl-containers, fcl, geometric-shapes, geometry-msgs, kdl-parser, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, octomap, octomap-msgs, orocos-kdl, pkg-config, pluginlib, pybind11-catkin, python3, random-numbers, rosconsole, roslib, rostest, rostime, rosunit, ruckig, sensor-msgs, shape-msgs, srdfdom, std-msgs, tf2-eigen, tf2-geometry-msgs, tf2-kdl, trajectory-msgs, urdf, urdfdom, urdfdom-headers, visualization-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-moveit-core";
  version = "1.1.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "moveit-release";
        rev = "release/noetic/moveit_core/1.1.11-1";
        sha256 = "sha256-ekvZJA8B1UqcR3uqK/nNHyajA82uYtDOoni9LXcC6eI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ angles moveit-resources-panda-moveit-config moveit-resources-pr2-description orocos-kdl rostest rosunit tf2-kdl ];
  propagatedBuildInputs = [ assimp boost bullet console-bridge eigen eigen-stl-containers fcl geometric-shapes geometry-msgs kdl-parser moveit-msgs octomap octomap-msgs pluginlib pybind11-catkin python3 random-numbers rosconsole roslib rostime ruckig sensor-msgs shape-msgs srdfdom std-msgs tf2-eigen tf2-geometry-msgs trajectory-msgs urdf urdfdom urdfdom-headers visualization-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Core libraries used by MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
