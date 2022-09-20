
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, openni2-camera, python3Packages, rgbd-launch, roslaunch, rospy, roswtf, tf, usbutils }:
buildRosPackage {
  pname = "ros-noetic-openni2-launch";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/noetic/openni2_launch/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "eb365e4d85b763816ba56ad2b2d369d519a801907b1b5ef66e695981191f2483";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ depth-image-proc image-proc nodelet openni2-camera python3Packages.catkin-pkg rgbd-launch rospy roswtf tf usbutils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to start the openni2_camera drivers using rgbd_launch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
