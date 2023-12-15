
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-test-assets, std-srvs, steering-controllers-library }:
buildRosPackage {
  pname = "ros-iron-tricycle-steering-controller";
  version = "3.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/tricycle_steering_controller/3.19.2-1.tar.gz";
    name = "3.19.2-1.tar.gz";
    sha256 = "6f624e4b91340bd34dc910ddb3000fa36484f46a9e57b0b49b26d3f601999cda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle std-srvs steering-controllers-library ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Steering controller with tricycle kinematics. Rear fixed wheels are powering the vehicle and front wheel is steering.'';
    license = with lib.licenses; [ asl20 ];
  };
}
