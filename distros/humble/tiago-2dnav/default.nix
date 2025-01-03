
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, nav2-bringup, pal-maps, ros2launch, rviz2, tiago-description, tiago-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-2dnav";
  version = "4.5.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_2dnav/4.5.0-1.tar.gz";
    name = "4.5.0-1.tar.gz";
    sha256 = "f812c83f83256345e7f3011bb09aca8304347627c768cfb6be685a8e9b7b146b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal nav2-bringup pal-maps ros2launch rviz2 tiago-description tiago-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo-specific launch files needed to run navigation on a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
