
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xiaoqiang-freenect-camera, xiaoqiang-freenect-launch }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-freenect";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_freenect/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "abcac4c6597ac978286998bd00670b8d4f859bb431600e282a8dd2587f4a50de";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xiaoqiang-freenect-camera xiaoqiang-freenect-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect
    Modified version of xiaoqiang_freenect_stack, add tilt angle control support'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
