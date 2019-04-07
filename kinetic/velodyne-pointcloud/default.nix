
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-driver, pcl-ros, dynamic-reconfigure, tf, pcl-conversions, velodyne-laserscan, angles, roslaunch, roslib, catkin, tf2-ros, roscpp, nodelet, pluginlib, libyamlcpp, sensor-msgs, rostest, velodyne-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-pointcloud";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_pointcloud/1.5.2-0.tar.gz;
    sha256 = "98bf9d6f84b573905ed7751407f566aa014f90b8aae4b85e4a20340bf7544e4e";
  };

  buildInputs = [ pluginlib tf pcl-conversions sensor-msgs libyamlcpp velodyne-driver roscpp nodelet velodyne-msgs angles dynamic-reconfigure roslib pcl-ros ];
  checkInputs = [ rostest roslaunch rosunit tf2-ros ];
  propagatedBuildInputs = [ pluginlib velodyne-laserscan libyamlcpp pcl-conversions sensor-msgs velodyne-driver roscpp roslib nodelet velodyne-msgs angles dynamic-reconfigure tf pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
