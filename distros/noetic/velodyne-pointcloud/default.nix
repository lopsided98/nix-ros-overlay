
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-updater, dynamic-reconfigure, eigen, nodelet, roscpp, roslaunch, roslib, roslint, rostest, rosunit, sensor-msgs, tf2-ros, velodyne-driver, velodyne-laserscan, velodyne-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-velodyne-pointcloud";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_pointcloud/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "b8425f2244f94b610459ede15bdb228eb842e4cd84a6ae10aed6dd67962b6de7";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch rostest rosunit tf2-ros ];
  propagatedBuildInputs = [ angles diagnostic-updater dynamic-reconfigure eigen nodelet roscpp roslib sensor-msgs tf2-ros velodyne-driver velodyne-laserscan velodyne-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
