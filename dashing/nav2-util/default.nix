
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, lifecycle-msgs, rclcpp-action, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, rclcpp, std-srvs, rclcpp-lifecycle, tf2-ros, nav-msgs, SDL, SDL_image, ament-lint-common, test-msgs, launch-testing, nav2-msgs, tf2, ament-lint-auto }:
buildRosPackage rec {
  pname = "ros-dashing-nav2-util";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_util/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "990c2d1d03deec47f1de711c2d26d12436ce5f28a2a52630802f673d6b07b5ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ SDL SDL_image rclcpp-lifecycle test-msgs nav2-msgs tf2-ros nav2-common tf2 nav-msgs lifecycle-msgs rclcpp-action rclcpp geometry-msgs ];
  checkInputs = [ std-srvs ament-cmake-pytest rclcpp-lifecycle ament-lint-common test-msgs launch-testing ament-cmake-gtest launch rclcpp-action ament-lint-auto ];
  propagatedBuildInputs = [ SDL SDL_image rclcpp-lifecycle nav2-msgs tf2-ros tf2 nav-msgs lifecycle-msgs rclcpp-action rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
