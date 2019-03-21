
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, spinnaker-camera-driver, catkin }:
buildRosPackage {
  pname = "ros-kinetic-flir-camera-driver";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/kinetic/flir_camera_driver/0.1.3-0.tar.gz;
    sha256 = "108389316c4d76ed4979b925fcd3204f98cfcbd0b9dc41a635769617c0b9294d";
  };

  propagatedBuildInputs = [ spinnaker-camera-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of drivers for Flir cameras based on the Spinnaker SDK.'';
    #license = lib.licenses.BSD;
  };
}
