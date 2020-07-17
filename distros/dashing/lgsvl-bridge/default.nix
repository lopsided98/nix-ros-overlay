
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, rcl, rcutils }:
buildRosPackage {
  pname = "ros-dashing-lgsvl-bridge";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/dashing/lgsvl_bridge/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "6ce2171c25e0bb6f2cdbf8e5728e2c376f96c2d0bd0f38f4d05fd0cf15a45581";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rcl rcutils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
