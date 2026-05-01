
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-lyrical-geographic-info";
  version = "1.0.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/lyrical/geographic_info/1.0.6-3.tar.gz";
    name = "1.0.6-3.tar.gz";
    sha256 = "0a2d1e51682a18e3f8cb77aa3c7d4a90ee857897f82d3e96508445f0c4fc88d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geodesy geographic-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Geographic information metapackage.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
