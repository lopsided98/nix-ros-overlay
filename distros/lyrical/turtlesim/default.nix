
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, qt6, rclcpp, rclcpp-action, std-msgs, std-srvs, turtlesim-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtlesim";
  version = "1.10.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/lyrical/turtlesim/1.10.9-1.tar.gz";
    name = "1.10.9-1.tar.gz";
    sha256 = "79aa2bd797408cbc49453efdf584cdbd2d9f3478f9524f4899b95e1db1e09487";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs qt6.qtbase rclcpp rclcpp-action std-msgs std-srvs turtlesim-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "turtlesim is a tool made for teaching ROS and ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
