
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond-core, dynamic-reconfigure, pluginlib, actionlib, catkin, ros-core, nodelet-core, class-loader }:
buildRosPackage {
  pname = "ros-kinetic-ros-base";
  version = "1.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/kinetic/ros_base/1.3.2-0.tar.gz";
    name = "1.3.2-0.tar.gz";
    sha256 = "708d8c5de4f1692b2b5aa67ede2d4153607642a9efc93c3225844cb27efc4141";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure bond-core pluginlib actionlib ros-core nodelet-core class-loader ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_core and includes other basic non-robot tools like actionlib, dynamic reconfigure, nodelets, and pluginlib.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
