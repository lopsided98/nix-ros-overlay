
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, create3-examples-msgs, geometry-msgs, irobot-create-msgs, nav-msgs, rclcpp, rclcpp-action, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-create3-coverage";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/jazzy/create3_coverage/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "000b2ab0a012b8310f2daffe4ec3d4c9e65fb082a26ca1c5ab1417ee7307334f";
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
