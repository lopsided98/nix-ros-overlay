
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-sea-arm-bringup, pal-sea-arm-controller-configuration, pal-sea-arm-description }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm";
  version = "1.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm/1.21.0-1.tar.gz";
    name = "1.21.0-1.tar.gz";
    sha256 = "f9f25ee05d7711b7feba4976bb43c7e67311a8acef503e61046be354549154f5";
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
