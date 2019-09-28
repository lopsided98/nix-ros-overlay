
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, lifecycle-msgs, rclcpp-action, geometry-msgs, ament-cmake-pytest, boost, ament-cmake-gtest, launch, rclcpp, std-srvs, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros, nav-msgs, SDL, SDL_image, ament-lint-common, test-msgs, launch-testing, nav2-msgs, tf2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-util";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_util/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "1e691bf11cbdd21fcda8b60498993b206f3095714fab03180ed7941801191924";
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
