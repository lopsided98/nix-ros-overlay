
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, imagezero, message-runtime, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imagezero-ros";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/noetic/imagezero_ros/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "f444b3f9924c449d45bbb3a97ef2ece1bebc24b785991f1c80e122d66853aaaa";
  };

  buildType = "catkin";
  buildInputs = [ catkin roscpp ];
  propagatedBuildInputs = [ cv-bridge imagezero message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A library that provides convenient methods for manipulating ROS images with ImageZero'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
