
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, openni2-camera, python3Packages, rgbd-launch, roslaunch, rospy, roswtf, tf, usbutils }:
buildRosPackage {
  pname = "ros-noetic-openni2-launch";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/noetic/openni2_launch/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "c5f4657621bbde2c43bf3494d169604ba6d77c236e456a2168b4d9acfe1e4cb0";
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
