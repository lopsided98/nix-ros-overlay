
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, bond-core, catkin, dynamic-reconfigure, nodelet-core, ros-core }:
buildRosPackage {
  pname = "ros-noetic-ros-base";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/noetic/ros_base/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "bde4e754906fb27372d239878115136a17fdd34fb6993c9a945447dfbb56c7cc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib bond-core dynamic-reconfigure nodelet-core ros-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_core and includes other basic non-robot tools like actionlib, dynamic reconfigure, nodelets, and pluginlib.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
