
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, boost, lgsvl-msgs, nav-msgs, rcl, rcutils, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-lgsvl-bridge";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/dashing/lgsvl_bridge/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "fd1e44c06634872c1afe5dcd63d4dfeb0ee0d0b490dfbc0a082c3631fda4b296";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-ros boost lgsvl-msgs nav-msgs rcl rcutils rosgraph-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
