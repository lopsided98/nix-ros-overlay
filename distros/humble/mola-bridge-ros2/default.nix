
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, geometry-msgs, mola-common, mola-kernel, mrpt2, nav-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-mola-bridge-ros2";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_bridge_ros2/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "45c21905e082b02d71bc1419d8329f160e037b04fa3bf04817c47771e1cfb328";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common geometry-msgs mola-common mola-kernel mrpt2 nav-msgs rclcpp sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "Bidirectional bridge ROS2-MOLA";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
