
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, eigen, eigen-conversions, geometry-msgs, hector-trajectory-server, nav-msgs, nodelet, pcl, pcl-ros, rosbag, roscpp, rospy, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-floam";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/floam-release/archive/release/noetic/floam/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "305b0761f138eba420f2f8c1c028fc3146099954a1a7d2854bf59437cd6784b5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ceres-solver eigen eigen-conversions geometry-msgs hector-trajectory-server nav-msgs nodelet pcl pcl-ros rosbag roscpp rospy sensor-msgs std-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic Lidar SLAM package based on FLOAM which was based on ALOAM by HKUST and LOAM by CMU'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
