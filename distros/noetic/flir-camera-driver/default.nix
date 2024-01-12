
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flir-camera-description, spinnaker-camera-driver }:
buildRosPackage {
  pname = "ros-noetic-flir-camera-driver";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/noetic/flir_camera_driver/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "d78e24645bbc73b19594fff6a100f5905079cbe6c6e8a263739c5080b15c77f0";
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
