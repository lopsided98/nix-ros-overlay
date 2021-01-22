
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-arbotix-firmware";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/kinetic/arbotix_firmware/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "8099ec593697968ade7453dbdc3f3b314b5bffbeb37ea7e6c74b77126a16e301";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Firmware source code for ArbotiX ROS bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
