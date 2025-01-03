
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-rolling-geographic-info";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/rolling/geographic_info/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "c71ef5be0339e35ef5044647e356a23d105c1b1a14ef82ec2f99a86158e08041";
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
