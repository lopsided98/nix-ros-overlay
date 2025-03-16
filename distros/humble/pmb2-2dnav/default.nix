
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, launch-pal, nav2-bringup, pal-maps, pmb2-laser-sensors, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav";
  version = "4.11.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_2dnav/4.11.0-1.tar.gz";
    name = "4.11.0-1.tar.gz";
    sha256 = "1f88acddb71c5ed6b61981461d227ef6028c46c8734193c9d8fb10cba2e27b55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch-pal nav2-bringup pal-maps pmb2-laser-sensors ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2-specific launch files needed to run
    navigation on the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
