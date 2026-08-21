
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-sea-arm-bringup, pal-sea-arm-controller-configuration, pal-sea-arm-description }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm";
  version = "2.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm/2.8.4-1.tar.gz";
    name = "2.8.4-1.tar.gz";
    sha256 = "6de4e90ec4f30323d1ef27b57ff9926cfe71846a23073e355fece64196157bcc";
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
