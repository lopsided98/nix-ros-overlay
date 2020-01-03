
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, joy-listener, kalman-filter, rosbaglive }:
buildRosPackage {
  pname = "ros-melodic-wu-ros-tools";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/wu_ros_tools/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "c27fe7753efad044328dfe5dc67e04deb7ea2a9d69b54b1fe34bdcbdc82d7335";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ easy-markers joy-listener kalman-filter rosbaglive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools for making a variety of generic ROS-related tasks easier.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
