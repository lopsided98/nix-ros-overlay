
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-realtime-tools";
  version = "2.5.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/jazzy/realtime_tools/2.5.0-4.tar.gz";
    name = "2.5.0-4.tar.gz";
    sha256 = "7157f98e6081980ce19130600cd57b666bc3deec1c62298339147150ed520a22";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock test-msgs ];
  propagatedBuildInputs = [ ament-cmake rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.";
    license = with lib.licenses; [ "3-Clause-BSD" ];
  };
}
