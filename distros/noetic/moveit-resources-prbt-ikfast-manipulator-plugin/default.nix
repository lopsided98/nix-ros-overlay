
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_prbt_ikfast_manipulator_plugin/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "7b9a978e377e94714f8f1a13e6ca778e300453ffdc7d98f4a869989b3fddac11";
  };

  buildType = "catkin";
  buildInputs = [ tf2-eigen ];
  propagatedBuildInputs = [ eigen-conversions moveit-core pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
