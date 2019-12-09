
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-msgs, catkin, arbotix-firmware, arbotix-sensors, arbotix-python, arbotix-controllers }:
buildRosPackage {
  pname = "ros-kinetic-arbotix";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/kinetic/arbotix/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "98f0fdd8370dcf112cc1ca41f15b6094c67a7e906f9ab76faccc5242e42efe66";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ arbotix-msgs arbotix-firmware arbotix-sensors arbotix-python arbotix-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArbotiX Drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
