
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-action, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-galactic-gripper-controllers";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/gripper_controllers/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "fa86829c262273956b4af81b8ac83e8ddaf335e75f2618f46d8f6c8ba76404e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-interface hardware-interface rclcpp rclcpp-action realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The gripper_controllers package'';
    license = with lib.licenses; [ asl20 ];
  };
}
