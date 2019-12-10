
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, opencv3, rclcpp, rclcpp-components, rmw-implementation-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-image-tools";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/image_tools/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "7da7d662e4cb1cdf07e9269542316824b772c3b948ee39f6a9822fd058a9bcdd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ];
  propagatedBuildInputs = [ opencv3 rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools to capture and play back images to and from DDS subscriptions and publications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
