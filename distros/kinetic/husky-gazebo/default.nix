
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, husky-control, husky-description, multimaster-launch, pointcloud-to-laserscan, roslaunch, rostopic }:
buildRosPackage {
  pname = "ros-kinetic-husky-gazebo";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_gazebo/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "94e7bec83e3c97481170bfd6faced9533905aacd5d0d4bc68f74383e7acd079e";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins husky-control husky-description multimaster-launch pointcloud-to-laserscan rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
