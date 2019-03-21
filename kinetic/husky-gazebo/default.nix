
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, husky-control, hector-gazebo-plugins, catkin, gazebo-plugins, husky-description, multimaster-launch, rostopic, roslaunch, pointcloud-to-laserscan, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-husky-gazebo";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_gazebo/0.3.2-0.tar.gz;
    sha256 = "3d6adaa8dfa047d60419f8178f8ac6f7bbff30f734244efa21db209e4b0e715b";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager hector-gazebo-plugins gazebo-plugins husky-description multimaster-launch rostopic pointcloud-to-laserscan husky-control gazebo-ros-control ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    #license = lib.licenses.BSD;
  };
}
