
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, cv-bridge, imagezero, message-runtime, roscpp }:
buildRosPackage {
  pname = "ros-lunar-imagezero-ros";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/lunar/imagezero_ros/0.2.4-0.tar.gz;
    sha256 = "cae405da227ffef2c861f29c333532f3c10d9c4b56806a796f8e3f6959c14076";
  };

  buildInputs = [ message-runtime sensor-msgs cv-bridge roscpp imagezero ];
  propagatedBuildInputs = [ sensor-msgs cv-bridge message-runtime imagezero ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A library that provides convenient methods for manipulating ROS images with ImageZero'';
    #license = lib.licenses.BSD;
  };
}
