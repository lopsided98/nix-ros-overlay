
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, launch-pal, nav2-bringup, omni-base-2dnav, pal-maps, pmb2-2dnav, ros2launch, rviz2, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-2dnav";
  version = "4.9.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_2dnav/4.9.0-1.tar.gz";
    name = "4.9.0-1.tar.gz";
    sha256 = "ef5fc8ca32934f39b9f4c6d9e17b52f86a431e47a2e9687f5f99fc5c89e6ae74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch-pal nav2-bringup omni-base-2dnav pal-maps pmb2-2dnav ros2launch rviz2 tiago-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo-specific launch files needed to run navigation on a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
