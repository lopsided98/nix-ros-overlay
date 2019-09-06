
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, nav2-tasks, tf2-geometry-msgs, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, nav2-common, tf2, nav-msgs, rclcpp, ament-lint-auto, nav2-robot, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-motion-primitives";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_motion_primitives/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "50a75ca6f7675e93030ea763839db9e8f4d02795c627dc06f8c0257154c667eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-tasks tf2-geometry-msgs nav2-msgs nav2-util nav2-common tf2 nav-msgs rclcpp nav2-robot geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-tasks nav2-msgs nav-msgs rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
