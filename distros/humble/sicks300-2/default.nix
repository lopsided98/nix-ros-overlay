
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, laser-filters, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-sicks300-2";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sicks300_ros2-release/archive/release/humble/sicks300_2/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "82c20acccbc57919ef032cabc70c4a8be2ba1c58af7ce1f35d50d9706501be71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs laser-filters rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package published a laser scan message out of a Sick S300 laser scanner.";
    license = with lib.licenses; [ asl20 ];
  };
}
