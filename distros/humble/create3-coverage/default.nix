
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, create3-examples-msgs, geometry-msgs, irobot-create-msgs, nav-msgs, rclcpp, rclcpp-action, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-create3-coverage";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/humble/create3_coverage/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "949926950e6b9ce1e7c40c78bc253c65c864aec7b2468281da2182b5ef8baaae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ create3-examples-msgs geometry-msgs irobot-create-msgs nav-msgs rclcpp rclcpp-action tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ action server exposing a non-systematic coverage behavior";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
