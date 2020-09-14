
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, boost, rcl, rcutils }:
buildRosPackage {
  pname = "ros-foxy-lgsvl-bridge";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/foxy/lgsvl_bridge/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "eae3bee5eca6b86a46d892976c80561fbc47bd62e0012f722822a4b1e4928768";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-ros boost rcl rcutils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
