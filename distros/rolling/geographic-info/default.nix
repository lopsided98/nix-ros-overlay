
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-rolling-geographic-info";
  version = "1.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/rolling/geographic_info/1.0.4-5.tar.gz";
    name = "1.0.4-5.tar.gz";
    sha256 = "198c754db78ae53be82c8288ea2091736814ab5cf2094119365781bf91203753";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geodesy geographic-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Geographic information metapackage.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
