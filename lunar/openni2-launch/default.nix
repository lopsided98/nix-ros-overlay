
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, openni2-camera, depth-image-proc, roswtf, catkin, pythonPackages, usbutils, rgbd-launch, rospy, nodelet, image-proc, tf }:
buildRosPackage {
  pname = "ros-lunar-openni2-launch";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni2_camera-release/archive/release/lunar/openni2_launch/0.4.2-0.tar.gz;
    sha256 = "d2649f096ad1a472ed909790e2274d0df1e846c6db9f2d3719b0a0795400951d";
  };

  buildInputs = [ roslaunch pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ depth-image-proc openni2-camera roswtf usbutils rgbd-launch rospy nodelet image-proc tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to start the openni2_camera drivers using rgbd_launch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
