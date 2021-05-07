
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, controller-manager, hardware-interface, joint-state-broadcaster, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-foxy-joint-state-controller";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/joint_state_controller/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "566e516af991cd87dc7ee6ef47f6e0921847e72e818e174a8df2d8252a790e59";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager hardware-interface rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ joint-state-broadcaster ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ asl20 ];
  };
}
