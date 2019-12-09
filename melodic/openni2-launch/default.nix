
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, usbutils, image-proc, roslaunch, catkin, tf, pythonPackages, roswtf, nodelet, depth-image-proc, rospy, openni2-camera, rgbd-launch }:
buildRosPackage {
  pname = "ros-melodic-openni2-launch";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/melodic/openni2_launch/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "51d7ca0ca441737e619194d4ffbfcf7dd76a586724845ca4641394967d2286a1";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ usbutils image-proc tf roswtf nodelet depth-image-proc rospy openni2-camera rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to start the openni2_camera drivers using rgbd_launch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
