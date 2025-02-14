
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, boost, libcap, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-realtime-tools";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/rolling/realtime_tools/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "5633a1881974fc63544b5fbf26b158806ce6c68a4e1da743ede334b944e4faaf";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock lifecycle-msgs rclcpp-lifecycle test-msgs ];
  propagatedBuildInputs = [ ament-cmake boost libcap rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.";
    license = with lib.licenses; [ "3-Clause-BSD" ];
  };
}
