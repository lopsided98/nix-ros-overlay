
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flir-camera-description, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-noetic-flir-camera-driver";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/noetic/flir_camera_driver/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "d7c34b9c69f6f63522013884324ee24bf4a372a6e4e9a791f806def69d47ccdd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ flir-camera-description spinnaker-camera-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of drivers for Flir cameras based on the Spinnaker SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
