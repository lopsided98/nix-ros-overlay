
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, control-msgs, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools }:
buildRosPackage {
  pname = "ros-iron-control-toolbox";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/iron/control_toolbox/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "22db15abb15757decfd4c51230dc80ebfae2e59e3950f2d73d62cddabb620b06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs rclcpp rcutils realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
