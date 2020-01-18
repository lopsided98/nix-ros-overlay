
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, rtt-pcl, rtt-roscomm }:
buildRosPackage {
  pname = "ros-kinetic-rtt-pcl-ros";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_pcl_ros-release/archive/release/kinetic/rtt_pcl_ros/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "c9499b0d0f0d25e5a8f6dacd5951e83e0a89808b0dab8c20156029407c7c63f7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl-ros rtt-pcl rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Orocos RTT ROS transport plugin for PCL types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
