
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, rcl, rcutils }:
buildRosPackage {
  pname = "ros-eloquent-lgsvl-bridge";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/eloquent/lgsvl_bridge/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "87c55e403bc41a3168f5a24a33c52a6d5cd4a23f60448d13b996e04e29ac8b6c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rcl rcutils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
