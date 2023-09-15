
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, geometry-msgs, mola-common, mola-kernel, mrpt2, nav-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-mola-input-ros2";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_ros2/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "e5743b286bed7193004945fa9596e4c1dee9c4f216791961999d97394f3294cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common geometry-msgs mola-common mola-kernel mrpt2 nav-msgs rclcpp sensor-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = ''RawDataSource acting as a bridge: ROS2 -&gt; MOLA'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
