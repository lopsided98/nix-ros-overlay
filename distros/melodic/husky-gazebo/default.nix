
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, husky-control, husky-description, multimaster-launch, pointcloud-to-laserscan, roslaunch, rostopic, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-husky-gazebo";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_gazebo/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "0b0812181f501c21c01fe533021fa792f08711790b45ac7c18de2572446dc39e";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins husky-control husky-description multimaster-launch pointcloud-to-laserscan rostopic velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
