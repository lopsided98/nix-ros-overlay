
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-realtime-tools";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/rolling/realtime_tools/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "2a8e6c4144d27f58bf925a15791cd8b60961e4f583db18d7a605f8bfd92b1abf";
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
