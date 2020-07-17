
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, rcl, rcutils }:
buildRosPackage {
  pname = "ros-foxy-lgsvl-bridge";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/foxy/lgsvl_bridge/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d97554a54f026d417812ec4df464f850d9821c0e44f9d3cc14f586cd9579f20b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rcl rcutils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
