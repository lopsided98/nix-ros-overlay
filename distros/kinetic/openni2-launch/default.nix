
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, openni2-camera, pythonPackages, rgbd-launch, roslaunch, rospy, roswtf, tf, usbutils }:
buildRosPackage {
  pname = "ros-kinetic-openni2-launch";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/kinetic/openni2_launch/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "566982c3b938b9e2a938812f9f216ff4e70bf8f9e0e2a256413f87c6aa8570a8";
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
