
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, hector-gazebo-plugins, catkin, gazebo-plugins, husky-description, multimaster-launch, rostopic, pointcloud-to-laserscan, roslaunch, husky-control, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-husky-gazebo";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_gazebo/0.3.3-0.tar.gz;
    sha256 = "c0512f217ed26d645befa3ad2d0a5a60599120c6f7de3f8dc352e379b8d5e1eb";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager hector-gazebo-plugins gazebo-plugins husky-description multimaster-launch rostopic pointcloud-to-laserscan husky-control gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
