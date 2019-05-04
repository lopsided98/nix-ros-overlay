
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, rosserial-arduino, catkin, libtar }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-leonardo-cmake";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/rosserial_leonardo_cmake-release/archive/release/kinetic/rosserial_leonardo_cmake/0.1.4-0.tar.gz;
    sha256 = "e298958dd4870a8e4b8da8a0b31f170c4e1e9181563548e171e1038f2869e635";
  };

  buildInputs = [ libtar ];
  propagatedBuildInputs = [ avrdude rosserial-arduino ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake scripts for building Arduino Leonardo (atmega32u4) Firmwares'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
