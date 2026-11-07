
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, controller-manager, controller-manager-msgs, forward-command-controller, joint-state-broadcaster, launch, launch-ros, lifecycle-msgs, rclpy, robot-state-publisher, robstride-ros2-control, ros2-socketcan, ros2run, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-robstride-examples";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/jazzy/robstride_examples/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "3184c661b015acefd59cce33e05c0a65f427963e61f5e31d43223fe20cf10a91";
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
