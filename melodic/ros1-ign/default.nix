
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros1-ign-gazebo-demos, catkin, ros1-ign-point-cloud, ros1-ign-bridge }:
buildRosPackage {
  pname = "ros-melodic-ros1-ign";
  version = "0.6.0-r2";

  src = fetchurl {
    url = https://github.com/osrf/ros1_ign-release/archive/release/melodic/ros1_ign/0.6.0-2.tar.gz;
    sha256 = "ede246f4b24f60ec82102dc000b4ebedaad7f3b72ce8d5c6a185de6f628f5edd";
  };

  propagatedBuildInputs = [ ros1-ign-gazebo-demos ros1-ign-point-cloud ros1-ign-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
