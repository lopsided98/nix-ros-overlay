
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, qt5, rclcpp, rclcpp-action, std-msgs, std-srvs, turtlesim-msgs }:
buildRosPackage {
  pname = "ros-rolling-turtlesim";
  version = "1.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim/1.10.3-1.tar.gz";
    name = "1.10.3-1.tar.gz";
    sha256 = "c556d3db6b5b67d654699d82dc6b9a234a9175649c1122b78a07ceb7ff78d227";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs qt5.qtbase rclcpp rclcpp-action std-msgs std-srvs turtlesim-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "turtlesim is a tool made for teaching ROS and ROS packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
