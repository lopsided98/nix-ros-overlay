
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-sea-arm-bringup, pal-sea-arm-controller-configuration, pal-sea-arm-description }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm";
  version = "1.20.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm/1.20.1-1.tar.gz";
    name = "1.20.1-1.tar.gz";
    sha256 = "69d040c30ff7d34a808459a5b326dc943824dee055526766691eea1a8e0ddeb8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pal-sea-arm-bringup pal-sea-arm-controller-configuration pal-sea-arm-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pal_sea_arm package";
    license = with lib.licenses; [ asl20 ];
  };
}
