
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, rsl, tl-expected, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-joint-trajectory-controller";
  version = "2.39.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/joint_trajectory_controller/2.39.0-1.tar.gz";
    name = "2.39.0-1.tar.gz";
    sha256 = "4b6b5f04686745ef62bf01e5488d547bbc27c00cd966f4f0d572474f7877e7bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools rsl tl-expected trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for executing joint-space trajectories on a group of joints";
    license = with lib.licenses; [ asl20 ];
  };
}
