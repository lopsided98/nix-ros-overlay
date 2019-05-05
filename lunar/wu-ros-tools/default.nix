
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kalman-filter, catkin, rosbaglive, easy-markers, joy-listener }:
buildRosPackage {
  pname = "ros-lunar-wu-ros-tools";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/lunar/wu_ros_tools/0.2.4-0.tar.gz;
    sha256 = "2281bef2e04a66d8634f25bf0fe7eedebc478419f5c513152c83f2b4a6c6e399";
  };

  propagatedBuildInputs = [ easy-markers joy-listener kalman-filter rosbaglive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools for making a variety of generic ROS-related tasks easier.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
