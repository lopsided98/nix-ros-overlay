
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, irobot-create-msgs, nav-msgs, rclcpp, rclcpp-action, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-create3-republisher";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/humble/create3_republisher/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "5b4d0464da17bc6cec696adbc967533ce08af75a9baf5c90f35263ebb9ad607b";
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
