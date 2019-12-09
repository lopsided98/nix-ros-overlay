
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, tf, rosunit, nodelet, velodyne-laserscan, velodyne-msgs, rostest, sensor-msgs, dynamic-reconfigure, roslib, libyamlcpp, tf2-ros, pcl-ros, velodyne-driver, catkin, roscpp, angles, roslaunch, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-pointcloud";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_pointcloud/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "98bf9d6f84b573905ed7751407f566aa014f90b8aae4b85e4a20340bf7544e4e";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros velodyne-driver sensor-msgs dynamic-reconfigure pluginlib tf roslib libyamlcpp pcl-conversions nodelet roscpp angles velodyne-msgs ];
  checkInputs = [ roslaunch rostest tf2-ros rosunit ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs velodyne-driver dynamic-reconfigure pluginlib tf roslib libyamlcpp pcl-conversions nodelet roscpp velodyne-laserscan angles velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
