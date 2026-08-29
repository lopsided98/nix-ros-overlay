
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, backward-ros, boost, builtin-interfaces, cras-lint, eigen, filters, fmt, geometry-msgs, rcl, rclcpp, rclcpp-components, rcutils, rmw, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tl-expected-nixpkgs, urdf }:
buildRosPackage {
  pname = "ros-rolling-cras-cpp-common";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/rolling/cras_cpp_common/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "57735f2584855a3172ade0bffd11f34308c7b5ead75b8a5e525680bb67821334";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros cras-lint std-msgs tf2 ];
  propagatedBuildInputs = [ backward-ros boost builtin-interfaces eigen filters fmt geometry-msgs rcl rclcpp rclcpp-components rcutils rmw sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tl-expected-nixpkgs urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "A Czech-army knife for ROS code written in C++.";
    license = with lib.licenses; [ bsd3 ];
  };
}
