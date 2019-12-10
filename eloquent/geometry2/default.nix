
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-msgs, tf2-py, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-geometry2";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/geometry2/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "da419f0c9ecae71424f7325a5c9d32e6aea1bfb8df617bba77d5858ed3a34287";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ tf2 tf2-eigen tf2-geometry-msgs tf2-kdl tf2-msgs tf2-py tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A metapackage to bring in the default packages second generation Transform Library in ros, tf2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
