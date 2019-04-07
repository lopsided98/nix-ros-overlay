
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, openni2-camera, depth-image-proc, roswtf, tf, catkin, pythonPackages, usbutils, rgbd-launch, rospy, image-proc, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-openni2-launch";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni2_camera-release/archive/release/kinetic/openni2_launch/0.4.2-0.tar.gz;
    sha256 = "566982c3b938b9e2a938812f9f216ff4e70bf8f9e0e2a256413f87c6aa8570a8";
  };

  buildInputs = [ roslaunch pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ depth-image-proc openni2-camera roswtf tf usbutils rgbd-launch rospy image-proc nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to start the openni2_camera drivers using rgbd_launch.'';
    #license = lib.licenses.BSD;
  };
}
