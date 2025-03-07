
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, launch-pal, nav2-bringup, omni-base-laser-sensors, pal-maps, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-omni-base-2dnav";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_2dnav/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "bdc802c76565bd59d1f22cbff8d8c74b19af0a51cae625dc98852ab0d7379c0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch-pal nav2-bringup omni-base-laser-sensors pal-maps ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific launch files needed to run
    navigation on the omni_base robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
