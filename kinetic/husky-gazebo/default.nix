
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-description, pointcloud-to-laserscan, controller-manager, hector-gazebo-plugins, catkin, rostopic, multimaster-launch, husky-control, gazebo-ros-control, gazebo-ros, roslaunch, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-husky-gazebo";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_gazebo/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "6b0c9887f8d43a2ce66e86fcd4aa198c0840386e55e37ffe3acadb55e39f040f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ husky-description pointcloud-to-laserscan controller-manager hector-gazebo-plugins rostopic multimaster-launch husky-control gazebo-ros-control gazebo-ros gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
