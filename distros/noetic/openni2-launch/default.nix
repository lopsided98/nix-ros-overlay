
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, openni2-camera, pythonPackages, rgbd-launch, roslaunch, rospy, roswtf, tf, usbutils }:
buildRosPackage {
  pname = "ros-noetic-openni2-launch";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/noetic/openni2_launch/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "67a1cd7a2d3b9b667271d9297d412db970cca713e2075abd47d36993b3afb0f3";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ depth-image-proc image-proc nodelet openni2-camera pythonPackages.catkin-pkg rgbd-launch rospy roswtf tf usbutils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to start the openni2_camera drivers using rgbd_launch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
