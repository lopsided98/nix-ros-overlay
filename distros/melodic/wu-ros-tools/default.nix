
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, joy-listener, kalman-filter, rosbaglive }:
buildRosPackage {
  pname = "ros-melodic-wu-ros-tools";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/wu_ros_tools/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "557457c728d9cafede598ef48db73051845b4d377959a8b5ccd9b7a2847e14a8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ easy-markers joy-listener kalman-filter rosbaglive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools for making a variety of generic ROS-related tasks easier.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
