
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-sea-arm-gazebo }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-simulation";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm_simulation-release/archive/release/humble/pal_sea_arm_simulation/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "cae0b2fdf6db77685a4018bf327c7693820558ec8ae1c5a4be79bfcd76ca867a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pal-sea-arm-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pal_sea_arm_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
