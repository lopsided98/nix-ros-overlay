
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, openni2-camera, depth-image-proc, roswtf, catkin, pythonPackages, usbutils, rgbd-launch, rospy, nodelet, image-proc, tf }:
buildRosPackage {
  pname = "ros-melodic-openni2-launch";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni2_camera-release/archive/release/melodic/openni2_launch/0.4.2-0.tar.gz;
    sha256 = "51d7ca0ca441737e619194d4ffbfcf7dd76a586724845ca4641394967d2286a1";
  };

  buildInputs = [ roslaunch pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ depth-image-proc openni2-camera roswtf usbutils rgbd-launch rospy nodelet image-proc tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to start the openni2_camera drivers using rgbd_launch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
