
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-joint-trajectory-controller";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/joint_trajectory_controller/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "9d3ab89845a2ac0131452f7b6ba99d7637cb8c14be84100ab4af15efc205776e";
  };

  buildType = "ament_cmake";
  buildInputs = [ generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints'';
    license = with lib.licenses; [ asl20 ];
  };
}
