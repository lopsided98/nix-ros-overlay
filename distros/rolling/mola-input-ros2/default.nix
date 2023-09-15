
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, geometry-msgs, mola-common, mola-kernel, mrpt2, nav-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-mola-input-ros2";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_ros2/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "a4cb3843f20fb6f4a5af131a5bc5a3d1ab70575c55e0d7bed91137a85e91e77a";
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
