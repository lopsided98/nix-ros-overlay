
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-controllers, catkin, arbotix-sensors, arbotix-firmware, arbotix-python, arbotix-msgs }:
buildRosPackage {
  pname = "ros-lunar-arbotix";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/lunar/arbotix/0.10.0-0.tar.gz;
    sha256 = "e3ca51e2fb5abe5928049ac413b228ac2eda39a91be0866ae51289dd03447d5a";
  };

  propagatedBuildInputs = [ arbotix-sensors arbotix-firmware arbotix-python arbotix-controllers arbotix-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArbotiX Drivers'';
    #license = lib.licenses.BSD;
  };
}
