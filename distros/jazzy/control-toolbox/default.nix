
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, control-msgs, filters, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools }:
buildRosPackage {
  pname = "ros-jazzy-control-toolbox";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/jazzy/control_toolbox/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "6fef2801ae3cf94543a4679524973fbeeb53dc4d8a877040bddf1d8c56991503";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs filters generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The control toolbox contains modules that are useful across all controllers.";
    license = with lib.licenses; [ bsd3 ];
  };
}
