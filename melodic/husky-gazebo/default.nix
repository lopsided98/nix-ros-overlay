
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, hector-gazebo-plugins, catkin, gazebo-plugins, husky-description, multimaster-launch, rostopic, pointcloud-to-laserscan, roslaunch, husky-control, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-husky-gazebo";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_gazebo/0.4.0-1.tar.gz;
    sha256 = "cfb61ca6bf220fdd2bf64a9c5fc23d6d70ee9301613b914438d60fbe8b79aa50";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager hector-gazebo-plugins gazebo-plugins husky-description multimaster-launch rostopic pointcloud-to-laserscan husky-control gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
