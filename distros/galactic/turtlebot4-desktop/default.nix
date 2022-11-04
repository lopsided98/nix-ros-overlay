
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-viz }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-desktop";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_desktop-release/archive/release/galactic/turtlebot4_desktop/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "790fa5f098fac9803706187bc0a5f83907e5ec4e9e917a5966f999f90755feb0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Desktop Metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
