
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, openni2-camera, pythonPackages, rgbd-launch, roslaunch, rospy, roswtf, tf, usbutils }:
buildRosPackage {
  pname = "ros-kinetic-openni2-launch";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/openni2_camera-release/archive/release/kinetic/openni2_launch/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "ddc560382ceba2134701d4f1c3136774637b2c2a1af19c15a07a944e1e49f222";
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
