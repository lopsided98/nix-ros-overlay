
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, boost, fmt, libcap, lifecycle-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, ros2-control-cmake, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-realtime-tools";
  version = "5.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/lyrical/realtime_tools/5.3.0-1.tar.gz";
    name = "5.3.0-1.tar.gz";
    sha256 = "0d506181397a9d0861bc74dc4fea74928d58adae32a032d35c81167e38dc8372";
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
