
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, boost, libcap, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-humble-realtime-tools";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/humble/realtime_tools/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "0125618e1901a96dfabdbe4c763c66a2f5e27467b707657bfd176663ec00e321";
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
