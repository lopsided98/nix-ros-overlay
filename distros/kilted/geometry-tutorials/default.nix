
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-geometry-tutorials";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/kilted/geometry_tutorials/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "e11c5a53f25538bd1384d1fc3fe30d4676fc22774b9087e1d09ab90014de96a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
