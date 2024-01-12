
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-arbotix-firmware";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/noetic/arbotix_firmware/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "a43128a750f19da3267baeb751f4854e60dc0ca1df0514a2afa019986e4dadcd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Firmware source code for ArbotiX ROS bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
