
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, rsl, tl-expected, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-joint-trajectory-controller";
  version = "3.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/joint_trajectory_controller/3.11.0-1.tar.gz";
    name = "3.11.0-1.tar.gz";
    sha256 = "41cd411a8d68977dcb9e4899c319bb063103147ba3f1325aa1c6ff95ae1e2a49";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools rsl tl-expected trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints'';
    license = with lib.licenses; [ asl20 ];
  };
}
