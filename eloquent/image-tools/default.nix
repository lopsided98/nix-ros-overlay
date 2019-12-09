
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, sensor-msgs, rclcpp-components, launch, std-msgs, rmw-implementation-cmake, launch-testing, launch-ros, ament-lint-common, ament-cmake, ament-lint-auto, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, opencv3 }:
buildRosPackage {
  pname = "ros-eloquent-image-tools";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/image_tools/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "7da7d662e4cb1cdf07e9269542316824b772c3b948ee39f6a9822fd058a9bcdd";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp-components std-msgs opencv3 rclcpp ];
  checkInputs = [ launch-testing-ros launch rmw-implementation-cmake launch-testing launch-ros ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components std-msgs opencv3 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools to capture and play back images to and from DDS subscriptions and publications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
