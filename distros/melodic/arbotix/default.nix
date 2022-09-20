
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-controllers, arbotix-firmware, arbotix-msgs, arbotix-python, arbotix-sensors, catkin }:
buildRosPackage {
  pname = "ros-melodic-arbotix";
  version = "0.10.0";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/melodic/arbotix/0.10.0-0.tar.gz";
    name = "0.10.0-0.tar.gz";
    sha256 = "3e72d718f9b9129b8537614cc5ae68e696b97def92315b859a5d2f00219f09e1";
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
