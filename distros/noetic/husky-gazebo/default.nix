
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, husky-control, husky-description, pointcloud-to-laserscan, roslaunch, rostopic, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-noetic-husky-gazebo";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_gazebo/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "9d243e1af40acf3683331ed65cfcd2dd262b9fc632072b907d8e93b6aca752a6";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins husky-control husky-description pointcloud-to-laserscan rostopic velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
