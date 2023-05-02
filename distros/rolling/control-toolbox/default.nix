
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, control-msgs, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools }:
buildRosPackage {
  pname = "ros-rolling-control-toolbox";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/rolling/control_toolbox/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "278d67e5f979b74b478130a5d6551b9dadcad01f7a19e246ea7cac9f7317614e";
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
