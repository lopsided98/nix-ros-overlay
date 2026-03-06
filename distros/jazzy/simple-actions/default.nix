
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-python, example-interfaces, rclcpp, rclcpp-action, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-simple-actions";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_actions-release/archive/release/jazzy/simple_actions/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "e99115142a2ff318bd775fd49ecdbd0df14ff78b2eed2a9593d0dc0ff660fdc1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest example-interfaces ];
  propagatedBuildInputs = [ action-msgs rclcpp rclcpp-action rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple library for using the `rclpy/rclcpp` action libraries";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
