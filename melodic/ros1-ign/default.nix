
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros1-ign-point-cloud, ros1-ign-gazebo-demos, ros1-ign-bridge, ros1-ign-image }:
buildRosPackage {
  pname = "ros-melodic-ros1-ign";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/osrf/ros1_ign-release/archive/release/melodic/ros1_ign/0.7.0-1.tar.gz;
    sha256 = "86ccbf68873a486af43f75bc4d8873105748d5a29d917240acd2186a8ba92233";
  };

  propagatedBuildInputs = [ ros1-ign-gazebo-demos ros1-ign-point-cloud ros1-ign-image ros1-ign-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
