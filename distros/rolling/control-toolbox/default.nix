
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, eigen, filters, fmt, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-cmake, rsl, tf2, tf2-geometry-msgs, tf2-ros, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-rolling-control-toolbox";
  version = "6.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/rolling/control_toolbox/6.3.0-1.tar.gz";
    name = "6.3.0-1.tar.gz";
    sha256 = "bd2b82294ffc1b53df1dc03a5a7201ba05742f4fbe0694ef01d7b2f0f92f935c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake fmt ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock rclcpp-lifecycle ];
  propagatedBuildInputs = [ backward-ros control-msgs eigen filters generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools rsl tf2 tf2-geometry-msgs tf2-ros tl-expected-nixpkgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The control toolbox contains modules that are useful across all controllers.";
    license = with lib.licenses; [ asl20 ];
  };
}
