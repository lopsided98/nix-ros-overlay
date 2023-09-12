
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, vesc-ackermann, vesc-driver, vesc-msgs }:
buildRosPackage {
  pname = "ros-foxy-vesc";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/foxy/vesc/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "e9a700e3bd704a4a0bf76b7bc0a93fe1489555083c984cb744abec6dca9ae604";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ vesc-ackermann vesc-driver vesc-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Metapackage for ROS interface to the Vedder VESC open source motor controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
