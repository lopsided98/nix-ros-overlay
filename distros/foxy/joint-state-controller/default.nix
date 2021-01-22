
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, control-msgs, controller-interface, controller-manager, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-joint-state-controller";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_state_controller/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "1716dc0263b74d1e1c76b88f4840e4b6c5f24ac295d056dace79ffcc9cefa719";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager rclcpp ];
  propagatedBuildInputs = [ control-msgs controller-interface pluginlib rclcpp-lifecycle rcutils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ asl20 ];
  };
}
