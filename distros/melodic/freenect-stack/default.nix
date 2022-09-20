
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, freenect-camera, freenect-launch }:
buildRosPackage {
  pname = "ros-melodic-freenect-stack";
  version = "0.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/freenect_stack-release/archive/release/melodic/freenect_stack/0.4.3-2.tar.gz";
    name = "0.4.3-2.tar.gz";
    sha256 = "0533f42d1d73c9bed14f900d28b4bf078c14c9e6c93f2245d13bbfb244532e67";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ freenect-camera freenect-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
