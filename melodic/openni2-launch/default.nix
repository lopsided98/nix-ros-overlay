
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, openni2-camera, depth-image-proc, roswtf, image-proc, catkin, pythonPackages, usbutils, rgbd-launch, rospy, nodelet, roslaunch, tf }:
buildRosPackage {
  pname = "ros-melodic-openni2-launch";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni2_camera-release/archive/release/melodic/openni2_launch/0.4.2-0.tar.gz;
    sha256 = "51d7ca0ca441737e619194d4ffbfcf7dd76a586724845ca4641394967d2286a1";
  };

  propagatedBuildInputs = [ depth-image-proc openni2-camera roswtf tf usbutils rgbd-launch rospy image-proc nodelet ];
  nativeBuildInputs = [ roslaunch catkin pythonPackages.catkin-pkg ];

  meta = {
    description = ''Launch files to start the openni2_camera drivers using rgbd_launch.'';
    #license = lib.licenses.BSD;
  };
}
