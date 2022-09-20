
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, imagezero, message-runtime, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-imagezero-ros";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/imagezero_transport-release/archive/release/melodic/imagezero_ros/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "3bebcdd5695eedb7733be8f49515ff4c8d341fe5f75f09442ddb2e5ca44a1766";
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
