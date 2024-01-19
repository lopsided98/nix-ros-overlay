
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client }:
buildRosPackage {
  pname = "ros-noetic-rosserial-chibios";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_chibios/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "d2ded99ec728d90b3bb3d22d5938c8d8e2769c001544c0aef5ea914c69a9c967";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for ChibiOS/HAL platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
