
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, boost, rcl, rcutils }:
buildRosPackage {
  pname = "ros-dashing-lgsvl-bridge";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/dashing/lgsvl_bridge/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "ff669923d9cc6d4da98c0685502a2fcd87774fe7600af5798f5434747b7c0c0e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-ros boost rcl rcutils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
