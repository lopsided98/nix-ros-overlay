
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, rsl, tl-expected, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-joint-trajectory-controller";
  version = "4.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/joint_trajectory_controller/4.27.0-1.tar.gz";
    name = "4.27.0-1.tar.gz";
    sha256 = "9d8ba122eae4d86ff3bf52562ab3ceb89287dda6bedd009a72de063af45ee763";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools rsl tl-expected trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for executing joint-space trajectories on a group of joints";
    license = with lib.licenses; [ asl20 ];
  };
}
