
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-test-assets, std-srvs, steering-controllers-library }:
buildRosPackage {
  pname = "ros-iron-bicycle-steering-controller";
  version = "3.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/bicycle_steering_controller/3.20.1-1.tar.gz";
    name = "3.20.1-1.tar.gz";
    sha256 = "8f7a170bc48d4f135b8efa66adcd4dabf4b239e58e9dd9d0ea4575bf50f8e1e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle std-srvs steering-controllers-library ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Steering controller with bicycle kinematics. Rear fixed wheel is powering the vehicle and front wheel is steering.'';
    license = with lib.licenses; [ asl20 ];
  };
}
