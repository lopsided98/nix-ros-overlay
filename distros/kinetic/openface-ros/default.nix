
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-recognition-msgs, image-recognition-util, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-openface-ros";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/openface_ros/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "e6475b9491f357caab0b422f7394a467ebbe340332e291e92810974855b2ec33";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge image-recognition-msgs image-recognition-util pythonPackages.numpy rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The openface_ros package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
