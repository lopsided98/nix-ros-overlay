
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-manager, hardware-interface, joint-state-broadcaster, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-foxy-joint-state-controller";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_state_controller/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "19dc1fa4e88aca682ce49835c63d7cff7acd43d60e259bac3c027e328125d528";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ joint-state-broadcaster ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ asl20 ];
  };
}
