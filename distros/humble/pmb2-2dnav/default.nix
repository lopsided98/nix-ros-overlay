
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, nav2-bringup, pal-maps, pmb2-laser-sensors, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav";
  version = "4.0.19-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_2dnav/4.0.19-1.tar.gz";
    name = "4.0.19-1.tar.gz";
    sha256 = "72c65f504e1b7f3d66ada1c01f279ab0e358411254dd4925319f25741f78f7b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup pal-maps pmb2-laser-sensors ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2-specific launch files needed to run
    navigation on the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
