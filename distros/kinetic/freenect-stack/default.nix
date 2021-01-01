
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, freenect-camera, freenect-launch }:
buildRosPackage {
  pname = "ros-kinetic-freenect-stack";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/freenect_stack-release/archive/release/kinetic/freenect_stack/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "1c077e368cc38a4865ab784696e9259e0b26587743b4a6fea95ba988566d71ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ freenect-camera freenect-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
