
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flir-camera-description, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-noetic-flir-camera-driver";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/noetic/flir_camera_driver/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "327f8ef92766d5cd10aa75ec9a05549509a7d5ef1ca1514f756dd72200c10229";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ flir-camera-description spinnaker-camera-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of drivers for Flir cameras based on the Spinnaker SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
