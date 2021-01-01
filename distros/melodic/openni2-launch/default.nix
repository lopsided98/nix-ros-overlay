
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, openni2-camera, pythonPackages, rgbd-launch, roslaunch, rospy, roswtf, tf, usbutils }:
buildRosPackage {
  pname = "ros-melodic-openni2-launch";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/melodic/openni2_launch/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "51d7ca0ca441737e619194d4ffbfcf7dd76a586724845ca4641394967d2286a1";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg roslaunch ];
  propagatedBuildInputs = [ depth-image-proc image-proc nodelet openni2-camera rgbd-launch rospy roswtf tf usbutils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to start the openni2_camera drivers using rgbd_launch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
