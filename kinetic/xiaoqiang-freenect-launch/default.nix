
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xiaoqiang-freenect-camera, rgbd-launch, nodelet, image-proc, tf }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-freenect-launch";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_freenect_launch/0.0.12-0.tar.gz;
    sha256 = "8a1a1355d7d2678a75bbc55547046047ffc98770696bd9b47f52bb11705d289b";
  };

  propagatedBuildInputs = [ xiaoqiang-freenect-camera rgbd-launch tf image-proc nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for xiaoqiang_freenect_camera to produce rectified, registered
    or disparity images.  Also produce point clouds and registered
    point clouds.  Based on the openni_launch package.
    Modified version of xiaoqiang_freenect_stack, add tilt angle control support'';
    #license = lib.licenses.BSD;
  };
}
