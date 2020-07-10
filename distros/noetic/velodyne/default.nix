
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, velodyne-driver, velodyne-laserscan, velodyne-msgs, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-noetic-velodyne";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "c8f5e8a30661b80796005171875f1db08536c6e6562680c419ea7b23a18920c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ velodyne-driver velodyne-laserscan velodyne-msgs velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic ROS support for the Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
