
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2-robot, nav2-msgs, ament-cmake-pytest, geometry-msgs, launch, launch-testing, ament-lint-common, ament-cmake, tf2-geometry-msgs, ament-cmake-gtest, nav2-common, tf2, nav2-tasks, nav2-util, rclcpp, nav-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-motion-primitives";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_motion_primitives/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "50a75ca6f7675e93030ea763839db9e8f4d02795c627dc06f8c0257154c667eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-robot geometry-msgs nav-msgs tf2-geometry-msgs nav2-common tf2 nav2-tasks nav2-util rclcpp nav2-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-tasks rclcpp nav2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
