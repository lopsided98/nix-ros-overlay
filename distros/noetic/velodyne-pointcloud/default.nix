
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-updater, dynamic-reconfigure, eigen, libyamlcpp, nodelet, roscpp, roslaunch, roslib, roslint, rostest, rosunit, sensor-msgs, tf2-ros, velodyne-driver, velodyne-laserscan, velodyne-msgs }:
buildRosPackage {
  pname = "ros-noetic-velodyne-pointcloud";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_pointcloud/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "39b31cb1d871a82d5a7a1c24ce6119588bbd310b3dec7a49e91f2e7827f5a9b4";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ roslaunch rostest rosunit tf2-ros ];
  propagatedBuildInputs = [ angles diagnostic-updater dynamic-reconfigure eigen libyamlcpp nodelet roscpp roslib sensor-msgs tf2-ros velodyne-driver velodyne-laserscan velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
