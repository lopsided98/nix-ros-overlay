
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-iron-geographic-info";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/iron/geographic_info/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "fb878cc265efbbc069c13a141a28c339e48c39f76b0956b2da9d11f412eff76f";
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
