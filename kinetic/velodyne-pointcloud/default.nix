
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-driver, dynamic-reconfigure, pcl-ros, tf, pcl-conversions, velodyne-laserscan, angles, roslaunch, roslib, catkin, tf2-ros, nodelet, roscpp, pluginlib, libyamlcpp, sensor-msgs, rostest, velodyne-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-pointcloud";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_pointcloud/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "98bf9d6f84b573905ed7751407f566aa014f90b8aae4b85e4a20340bf7544e4e";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib libyamlcpp velodyne-driver sensor-msgs velodyne-msgs roscpp roslib nodelet pcl-ros angles dynamic-reconfigure tf pcl-conversions ];
  checkInputs = [ rostest roslaunch rosunit tf2-ros ];
  propagatedBuildInputs = [ pluginlib velodyne-laserscan tf velodyne-driver sensor-msgs libyamlcpp velodyne-msgs roslib pcl-ros nodelet dynamic-reconfigure angles roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
