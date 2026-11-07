
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, controller-manager, controller-manager-msgs, forward-command-controller, joint-state-broadcaster, launch, launch-ros, lifecycle-msgs, rclpy, robot-state-publisher, robstride-ros2-control, ros2-socketcan, ros2run, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-rolling-robstride-examples";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/rolling/robstride_examples/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "cdf8bd62e244bd4b1e1e20cdb1dd41f726c8f409ae029f4f6e7d9ed6edb76f13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest controller-manager-msgs lifecycle-msgs rclpy ros2run sensor-msgs std-msgs ];
  propagatedBuildInputs = [ ament-index-python controller-manager forward-command-controller joint-state-broadcaster launch launch-ros robot-state-publisher robstride-ros2-control ros2-socketcan xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ready-to-use Xacro profiles, ros2_control configuration, and launch examples for RobStride actuators.";
    license = with lib.licenses; [ mit ];
  };
}
