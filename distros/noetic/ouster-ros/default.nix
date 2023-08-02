# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

# { lib, buildRosPackage, fetchurl, catkin, git, ros-environment }:
{ lib, buildRosPackage, fetchurl, eigen, fetchgit, spdlog, curl, jsoncpp, catkin
, git, ros-environment, roscpp, std-msgs, geometry-msgs, tf2-ros, pcl-ros
, pcl-conversions, nodelet, message-generation, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-ouster-ros";
  version = "0.8.2";
  # https://github.com/ouster-lidar/ouster-ros/archive/refs/heads/master.zip

  src = builtins.fetchGit {
    url = "https://github.com/ouster-lidar/ouster-ros.git";
    ref = "master";
    name = "ouster-ros";
    submodules = true;
    rev = "3f01e1d7001d8d21ac984566d17505b98905fa86";
  };

  buildType = "catkin";
  buildInputs = [ catkin git ros-environment ];
  nativeBuildInputs = [ catkin git curl tf2-eigen pcl-ros spdlog jsoncpp ];

  # cmakeFlags = [ "-DCMAKE_INCLUDE_PATH=${eigen}/lib" ];

  meta = {
    description = "ROS - Ouster ROS driver.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
