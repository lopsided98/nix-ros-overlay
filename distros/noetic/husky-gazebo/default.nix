
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, husky-control, husky-description, pointcloud-to-laserscan, roslaunch, rostopic, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-noetic-husky-gazebo";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_gazebo/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "02bf1fbc4d39e010a8ae1131f8ae3684203ee236fa58c48003471ef5fa47acf2";
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
