
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, rsl, tl-expected-nixpkgs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-lyrical-joint-trajectory-controller";
  version = "6.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/joint_trajectory_controller/6.9.0-1.tar.gz";
    name = "6.9.0-1.tar.gz";
    sha256 = "4786379deb1dbf9a1d20a2a3d440bfefbf6a8e056eb3b3d8abed17b965cbbb96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-action rclcpp-lifecycle realtime-tools rsl tl-expected-nixpkgs trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for executing joint-space trajectories on a group of joints";
    license = with lib.licenses; [ asl20 ];
  };
}
