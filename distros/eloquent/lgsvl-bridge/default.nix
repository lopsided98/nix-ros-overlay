
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, boost, lgsvl-msgs, nav-msgs, rcl, rcutils, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-lgsvl-bridge";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/eloquent/lgsvl_bridge/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "4db9d8a670867e93594f9cdb180461508a908b70151ec46c2567d769620e9e8c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-ros boost lgsvl-msgs nav-msgs rcl rcutils rosgraph-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
