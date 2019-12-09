
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, test-msgs, tf2, nav2-msgs, nav-msgs, ament-lint-auto, rclcpp-lifecycle, SDL_image, SDL, launch-testing, ament-lint-common, tf2-geometry-msgs, nav2-common, rclcpp, ament-cmake-gtest, tf2-ros, std-srvs, lifecycle-msgs, rclcpp-action, boost, launch, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-dashing-nav2-util";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_util/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "8d2359dbfe005e421807e8146c97a8ab5a3b14a415eb53bd84c92a7e4e00185b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action rclcpp-lifecycle SDL_image geometry-msgs nav-msgs boost SDL test-msgs tf2-geometry-msgs nav2-common lifecycle-msgs tf2 rclcpp nav2-msgs tf2-ros ];
  checkInputs = [ rclcpp-action rclcpp-lifecycle launch launch-testing std-srvs ament-lint-common test-msgs ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ tf2-ros boost rclcpp-action geometry-msgs SDL_image nav-msgs rclcpp-lifecycle SDL test-msgs tf2-geometry-msgs nav2-common tf2 rclcpp nav2-msgs lifecycle-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
