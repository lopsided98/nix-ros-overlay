
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, nav2-bringup, omni-base-laser-sensors, pal-maps, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-omni-base-2dnav";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_2dnav/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "67b6be996d7a85f47e31d8de1b6404aff1b80975b02bfcf8ba5ca035aea70dbc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup omni-base-laser-sensors pal-maps ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific launch files needed to run
    navigation on the omni_base robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
