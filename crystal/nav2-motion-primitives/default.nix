
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-testing, nav-msgs, nav2-common, nav2-msgs, nav2-robot, nav2-tasks, nav2-util, rclcpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-motion-primitives";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_motion_primitives/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "50a75ca6f7675e93030ea763839db9e8f4d02795c627dc06f8c0257154c667eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common nav2-robot nav2-util tf2 tf2-geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-msgs nav2-tasks rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
