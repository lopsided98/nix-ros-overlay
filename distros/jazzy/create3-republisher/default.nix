
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, irobot-create-msgs, nav-msgs, rclcpp, rclcpp-action, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-create3-republisher";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/jazzy/create3_republisher/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2c229b40ea823449337dde04b779794c123b366d69ef6ac25acd73c073239672";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs irobot-create-msgs nav-msgs rclcpp rclcpp-action sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ action server exposing a non-systematic coverage behavior";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
