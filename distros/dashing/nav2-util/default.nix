
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, geometry-msgs, launch, launch-testing, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-nav2-util";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_util/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "8d2359dbfe005e421807e8146c97a8ab5a3b14a415eb53bd84c92a7e4e00185b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing rclcpp-action rclcpp-lifecycle std-srvs test-msgs ];
  propagatedBuildInputs = [ SDL SDL_image boost geometry-msgs lifecycle-msgs nav-msgs nav2-common nav2-msgs rclcpp rclcpp-action rclcpp-lifecycle test-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
