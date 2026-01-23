
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_language-pack-en, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, backward-ros, boost, builtin-interfaces, cras-lint, eigen, geometry-msgs, rcl, rclcpp, rclcpp-components, rcutils, rmw, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-cras-cpp-common";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/rolling/cras_cpp_common/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "f89ffa16ae4588074cab5eab156642d48678bbe98e521c9b0beeee12687993aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros cras-lint eigen geometry-msgs std-msgs tf2 ];
  propagatedBuildInputs = [ _unresolved_language-pack-en backward-ros boost builtin-interfaces rcl rclcpp rclcpp-components rcutils rmw tf2 tf2-geometry-msgs tf2-ros tl-expected ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "A Czech-army knife for ROS code written in C++.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
