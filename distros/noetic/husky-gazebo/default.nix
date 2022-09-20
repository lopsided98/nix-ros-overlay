
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, husky-control, husky-description, pointcloud-to-laserscan, roslaunch, rostopic, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-noetic-husky-gazebo";
  version = "0.6.4-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_gazebo/0.6.4-2.tar.gz";
    name = "0.6.4-2.tar.gz";
    sha256 = "5926be296e854845807759aa7d4bcf82d0dce50dbc5e6440ad76de4e6770c04c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins husky-control husky-description pointcloud-to-laserscan rostopic velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
