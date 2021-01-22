
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client }:
buildRosPackage {
  pname = "ros-noetic-rosserial-chibios";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_chibios/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "77e1de5169a9ef37f9e99f849b9a2079922c0f79f14220b77531e0312685c737";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for ChibiOS/HAL platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
