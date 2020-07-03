
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, SDL_image, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-nav2-util";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/nav2_util/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "c9fbbd474e9946bd80b54349629ac51d547ace599293bbc15e920a4e0489ce66";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common std-srvs ];
  propagatedBuildInputs = [ SDL SDL_image boost geometry-msgs lifecycle-msgs nav-msgs nav2-common nav2-msgs rclcpp rclcpp-action rclcpp-lifecycle test-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
