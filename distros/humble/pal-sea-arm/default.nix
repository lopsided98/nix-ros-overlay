
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-sea-arm-bringup, pal-sea-arm-controller-configuration, pal-sea-arm-description }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "ecb05d5f23a475b08308c805646acf3de6b952001bfbc8b060460371fac9f078";
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
