
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, rsl, tl-expected, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-joint-trajectory-controller";
  version = "4.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/joint_trajectory_controller/4.16.0-1.tar.gz";
    name = "4.16.0-1.tar.gz";
    sha256 = "6f324a79dca57ce64093aaf22a074c5c1033c8a8a91c2023c80c5a63e22ef988";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools rsl tl-expected trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for executing joint-space trajectories on a group of joints";
    license = with lib.licenses; [ asl20 ];
  };
}
