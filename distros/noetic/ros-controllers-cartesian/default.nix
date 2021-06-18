
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, cartesian-trajectory-controller, cartesian-trajectory-interpolation, catkin, twist-controller }:
buildRosPackage {
  pname = "ros-noetic-ros-controllers-cartesian";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/ros_controllers_cartesian/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "68724e5cfc44273534383ae564613526df3e1e88222c1a4b9142d72db5e7cb05";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-controller cartesian-trajectory-interpolation twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''scaled controllers metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
