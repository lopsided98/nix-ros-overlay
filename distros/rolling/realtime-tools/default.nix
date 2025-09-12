
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, boost, libcap, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2-control-cmake, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-realtime-tools";
  version = "4.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/rolling/realtime_tools/4.5.0-1.tar.gz";
    name = "4.5.0-1.tar.gz";
    sha256 = "3376710a874418406dcbf9eac765fdb6a1e56b31675b86344499110a466edf5e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock lifecycle-msgs rclcpp-lifecycle test-msgs ];
  propagatedBuildInputs = [ ament-cmake boost libcap rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.";
    license = with lib.licenses; [ "3-Clause-BSD" ];
  };
}
