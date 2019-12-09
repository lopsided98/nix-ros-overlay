
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-description, pointcloud-to-laserscan, controller-manager, hector-gazebo-plugins, catkin, rostopic, multimaster-launch, husky-control, gazebo-ros-control, gazebo-ros, roslaunch, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-husky-gazebo";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_gazebo/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "f8001d977d7740b7401878c8372438101e9669c9111838380973a41ede2bb4cf";
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
