
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, nav2-bringup, pal-maps, pmb2-laser-sensors, ros2launch, rviz2 }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_2dnav/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "7f8b1cfabd981e015fddf409c265242dbac301bf24a8daf2938ab1a717eed7bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal nav2-bringup pal-maps pmb2-laser-sensors ros2launch rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2-specific launch files needed to run
    navigation on the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
