
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, boost, fmt, libcap, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2-control-cmake, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-realtime-tools";
  version = "4.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/kilted/realtime_tools/4.9.0-1.tar.gz";
    name = "4.9.0-1.tar.gz";
    sha256 = "1402ead9bc417377bc0ebc72d26d23a1a91a6fbbdf3eb982069283a2b0d5f4f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock lifecycle-msgs rclcpp-lifecycle test-msgs ];
  propagatedBuildInputs = [ ament-cmake boost fmt libcap rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.";
    license = with lib.licenses; [ bsd3 ];
  };
}
