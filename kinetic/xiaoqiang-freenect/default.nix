
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xiaoqiang-freenect-camera, xiaoqiang-freenect-launch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-freenect";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_freenect/0.0.12-0.tar.gz;
    sha256 = "abcac4c6597ac978286998bd00670b8d4f859bb431600e282a8dd2587f4a50de";
  };

  propagatedBuildInputs = [ xiaoqiang-freenect-launch xiaoqiang-freenect-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect
    Modified version of xiaoqiang_freenect_stack, add tilt angle control support'';
    #license = lib.licenses.BSD;
  };
}
