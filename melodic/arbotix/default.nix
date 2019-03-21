
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-controllers, catkin, arbotix-sensors, arbotix-firmware, arbotix-python, arbotix-msgs }:
buildRosPackage {
  pname = "ros-melodic-arbotix";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/melodic/arbotix/0.10.0-0.tar.gz;
    sha256 = "3e72d718f9b9129b8537614cc5ae68e696b97def92315b859a5d2f00219f09e1";
  };

  propagatedBuildInputs = [ arbotix-sensors arbotix-firmware arbotix-python arbotix-controllers arbotix-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ArbotiX Drivers'';
    #license = lib.licenses.BSD;
  };
}
