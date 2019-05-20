
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-rtt-ros-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_ros_msgs/2.9.2-1.tar.gz;
    sha256 = "988d588727ef15b9b58c0e26caafed0c91c7a934f17311db71c499b7c89eac3e";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides .msg and .srv files for use with the rtt_ros_integration packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
