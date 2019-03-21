
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, cv-bridge, image-recognition-msgs, image-recognition-util, rospy }:
buildRosPackage {
  pname = "ros-kinetic-openface-ros";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/openface_ros/0.0.4-0.tar.gz;
    sha256 = "e6475b9491f357caab0b422f7394a467ebbe340332e291e92810974855b2ec33";
  };

  propagatedBuildInputs = [ pythonPackages.numpy image-recognition-msgs image-recognition-util rospy cv-bridge ];
  nativeBuildInputs = [ image-recognition-msgs image-recognition-util rospy catkin cv-bridge ];

  meta = {
    description = ''The openface_ros package'';
    #license = lib.licenses.TODO;
  };
}
