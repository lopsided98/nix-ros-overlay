
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-realtime-tools";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/rolling/realtime_tools/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "aea0f3317586e8a20c1ea2dd76691fc46d1d40425bc8b100ee2bb2611482bcbd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock test-msgs ];
  propagatedBuildInputs = [ ament-cmake rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ "3-Clause-BSD" ];
  };
}
