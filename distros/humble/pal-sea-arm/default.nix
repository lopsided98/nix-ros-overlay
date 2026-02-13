
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-sea-arm-bringup, pal-sea-arm-controller-configuration, pal-sea-arm-description }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm";
  version = "1.23.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm/1.23.2-1.tar.gz";
    name = "1.23.2-1.tar.gz";
    sha256 = "36d304134ac78d4743adcb0da036043a33ec6c5609169fb6a98644266d077116";
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
