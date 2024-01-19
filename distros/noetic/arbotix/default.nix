
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-controllers, arbotix-firmware, arbotix-msgs, arbotix-python, arbotix-sensors, catkin }:
buildRosPackage {
  pname = "ros-noetic-arbotix";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/noetic/arbotix/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "bd36a4d8e0f023d62f2d5cf4de9362e416ad71b00bb9f0e4a05109ef24a95ad1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ arbotix-controllers arbotix-firmware arbotix-msgs arbotix-python arbotix-sensors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArbotiX Drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
