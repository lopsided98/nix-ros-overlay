
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, boost, rcl, rcutils }:
buildRosPackage {
  pname = "ros-eloquent-lgsvl-bridge";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/eloquent/lgsvl_bridge/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "50c2bccf4f617bec29bdf7dad8db11e46ac971e4f74f1651583786c520521d43";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-ros boost rcl rcutils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
