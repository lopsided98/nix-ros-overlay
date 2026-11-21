
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, backward-ros, boost, builtin-interfaces, compressed-image-transport, cras-lint, eigen, filters, fmt, geometry-msgs, image-transport, point-cloud-interfaces, point-cloud-transport, rcl, rclcpp, rclcpp-components, rcutils, rmw, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tl-expected-nixpkgs, urdf, zstd-point-cloud-transport }:
buildRosPackage {
  pname = "ros-rolling-cras-cpp-common";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/rolling/cras_cpp_common/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "ad5350281b8afae35bb45330e5ad90bed81c51ad706869679d0a47a6f688962f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros compressed-image-transport cras-lint point-cloud-interfaces std-msgs tf2 zstd-point-cloud-transport ];
  propagatedBuildInputs = [ backward-ros boost builtin-interfaces eigen filters fmt geometry-msgs image-transport point-cloud-transport rcl rclcpp rclcpp-components rcutils rmw sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tl-expected-nixpkgs urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "A Czech-army knife for ROS code written in C++.";
    license = with lib.licenses; [ bsd3 ];
  };
}
