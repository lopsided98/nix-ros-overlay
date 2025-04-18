
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-humble-geographic-info";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/humble/geographic_info/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "1a899289d143c388be120854f654f5bbe36fed4317d31b7d062dcf5215c7e745";
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
