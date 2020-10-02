
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, boost, rcl, rcutils }:
buildRosPackage {
  pname = "ros-foxy-lgsvl-bridge";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/foxy/lgsvl_bridge/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "291baea07b5e9f149ea70ee4d8393b9b6b9ec720b4cf43c582c170fda5525661";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-ros boost rcl rcutils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
