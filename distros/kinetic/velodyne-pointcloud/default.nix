
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dynamic-reconfigure, libyamlcpp, nodelet, pcl-conversions, pcl-ros, pluginlib, roscpp, roslaunch, roslib, rostest, rosunit, sensor-msgs, tf, tf2-ros, velodyne-driver, velodyne-laserscan, velodyne-msgs }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-pointcloud";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_pointcloud/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "98bf9d6f84b573905ed7751407f566aa014f90b8aae4b85e4a20340bf7544e4e";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest rosunit tf2-ros ];
  propagatedBuildInputs = [ angles dynamic-reconfigure libyamlcpp nodelet pcl-conversions pcl-ros pluginlib roscpp roslib sensor-msgs tf velodyne-driver velodyne-laserscan velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
