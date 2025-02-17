
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, control-msgs, eigen, filters, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools }:
buildRosPackage {
  pname = "ros-rolling-control-toolbox";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/rolling/control_toolbox/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "71c5be112106f01cc22c12fbac268dc91d71a4a7ffc13bab2ad5d065d227f084";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs eigen filters generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The control toolbox contains modules that are useful across all controllers.";
    license = with lib.licenses; [ asl20 ];
  };
}
