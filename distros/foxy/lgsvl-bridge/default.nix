
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, boost, lgsvl-msgs, nav-msgs, rcl, rcutils, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-lgsvl-bridge";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/ros2-lgsvl-bridge-release/archive/release/foxy/lgsvl_bridge/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "ec0bd4e77269a675434081b4ffcb3f807f2852136fd515672676e134c908d9ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ ament-cmake-ros boost lgsvl-msgs nav-msgs rcl rcutils rosgraph-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsd3 ];
  };
}
