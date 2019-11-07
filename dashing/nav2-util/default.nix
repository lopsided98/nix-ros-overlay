
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, lifecycle-msgs, rclcpp-action, geometry-msgs, ament-cmake-pytest, boost, ament-cmake-gtest, launch, rclcpp, std-srvs, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros, nav-msgs, SDL, SDL_image, ament-lint-common, test-msgs, launch-testing, nav2-msgs, tf2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-util";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_util/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "8d2359dbfe005e421807e8146c97a8ab5a3b14a415eb53bd84c92a7e4e00185b";
  };

  buildType = "ament_cmake";
  buildInputs = [ SDL SDL_image tf2-geometry-msgs rclcpp-lifecycle test-msgs boost nav2-msgs tf2-ros nav2-common tf2 nav-msgs lifecycle-msgs rclcpp-action rclcpp geometry-msgs ];
  checkInputs = [ std-srvs ament-cmake-pytest rclcpp-lifecycle ament-lint-common test-msgs launch-testing ament-cmake-gtest launch rclcpp-action ament-lint-auto ];
  propagatedBuildInputs = [ SDL rclcpp-lifecycle SDL_image tf2-geometry-msgs boost test-msgs nav2-msgs tf2-ros nav2-common tf2 nav-msgs lifecycle-msgs rclcpp-action rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
