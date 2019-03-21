
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-controllers, catkin, arbotix-sensors, arbotix-firmware, arbotix-python, arbotix-msgs }:
buildRosPackage {
  pname = "ros-kinetic-arbotix";
  version = "0.10.0-r1";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/kinetic/arbotix/0.10.0-1.tar.gz;
    sha256 = "98f0fdd8370dcf112cc1ca41f15b6094c67a7e906f9ab76faccc5242e42efe66";
  };

  propagatedBuildInputs = [ arbotix-sensors arbotix-firmware arbotix-python arbotix-controllers arbotix-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArbotiX Drivers'';
    #license = lib.licenses.BSD;
  };
}
