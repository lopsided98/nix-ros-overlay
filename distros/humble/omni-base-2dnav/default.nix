
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, nav2-bringup, omni-base-laser-sensors, omni-base-maps, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-omni-base-2dnav";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_2dnav/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "5d00e39ab6cbdd58cb9cc4ffd1fbb2ece81333d799f4aa24a0081c55941aedaf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup omni-base-laser-sensors omni-base-maps ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific launch files needed to run
    navigation on the omni_base robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
