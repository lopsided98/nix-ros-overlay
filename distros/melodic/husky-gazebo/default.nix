
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, husky-control, husky-description, multimaster-launch, pointcloud-to-laserscan, roslaunch, rostopic, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-husky-gazebo";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_gazebo/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "3fb125be6de1e0792d55af5e2a6248880cfb5bf28f5fd1af7107970daa90e5c1";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins husky-control husky-description multimaster-launch pointcloud-to-laserscan rostopic velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
