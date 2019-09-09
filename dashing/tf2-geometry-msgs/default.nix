
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, ament-cmake-gtest, tf2-ros, ament-cmake-auto, tf2, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2-geometry-msgs";
  version = "0.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_geometry_msgs/0.11.5-1.tar.gz";
    name = "0.11.5-1.tar.gz";
    sha256 = "d763ba306fe1a0e8905650f25242f5fb102e49a8404be6ba6a12c8fb08c307e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2-ros tf2 orocos-kdl geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ tf2-ros tf2 orocos-kdl geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
