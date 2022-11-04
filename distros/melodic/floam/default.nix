
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, eigen, eigen-conversions, geometry-msgs, hector-trajectory-server, nav-msgs, nodelet, pcl, pcl-ros, rosbag, roscpp, rospy, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-floam";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/floam-release/archive/release/melodic/floam/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "beb288940b811899fc7dc80cc3d6b6c673c76fa6d68616179ca82660971bb097";
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
