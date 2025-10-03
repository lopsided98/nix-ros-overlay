
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-cmake, ros2-control-test-assets, std-srvs, steering-controllers-library }:
buildRosPackage {
  pname = "ros-rolling-tricycle-steering-controller";
  version = "5.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/tricycle_steering_controller/5.8.0-1.tar.gz";
    name = "5.8.0-1.tar.gz";
    sha256 = "59a3f30a2c7ada6ca45a317c6fd3872cffc8a0c164dd284bf795b4c6c110a813";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle std-srvs steering-controllers-library ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Steering controller with tricycle kinematics. Rear fixed wheels are powering the vehicle and front wheel is steering.";
    license = with lib.licenses; [ asl20 ];
  };
}
