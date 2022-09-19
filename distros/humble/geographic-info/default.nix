
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-humble-geographic-info";
  version = "1.0.4-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/humble/geographic_info/1.0.4-6.tar.gz";
    name = "1.0.4-6.tar.gz";
    sha256 = "32b9ce827d3ee4eb5a961173e738ad614f4077231909db44c6af8dcc308dfbb5";
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
