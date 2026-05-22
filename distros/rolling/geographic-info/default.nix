
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-rolling-geographic-info";
  version = "1.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/rolling/geographic_info/1.0.7-4.tar.gz";
    name = "1.0.7-4.tar.gz";
    sha256 = "85cfaff3725af7768e7a99853eb66a64aaa2ea0a08fb8c56b531046f51a4a559";
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
