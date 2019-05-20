
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, rtt-ros }:
buildRosPackage {
  pname = "ros-lunar-rtt-rospack";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_rospack/2.9.2-1.tar.gz;
    sha256 = "1072b2a5d7b6b97ad2ea4b88c0f7ada0841625b7c82e9197db8115d7b2668e33";
  };

  buildInputs = [ roslib rtt-ros ];
  propagatedBuildInputs = [ roslib rtt-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rtt_rospack provides an RTT plugin to use rospack to find packages in your ROS_PACKAGE_PATH'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
