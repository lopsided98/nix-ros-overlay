
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-jazzy-geographic-info";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/jazzy/geographic_info/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "20dadb219b60ef43cfb9918b59031396f9df8f89b12ad33e7383940d8c2bdcba";
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
