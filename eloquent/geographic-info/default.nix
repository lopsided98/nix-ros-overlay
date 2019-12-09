
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geodesy, geographic-msgs, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-geographic-info";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/eloquent/geographic_info/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "7f75c3f83f2b54194b30997907fab48969d72d532a5531b48b893102dc9354a9";
  };

  buildType = "catkin";
  buildInputs = [ geodesy geographic-msgs ];
  propagatedBuildInputs = [ geodesy geographic-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Geographic information metapackage.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
