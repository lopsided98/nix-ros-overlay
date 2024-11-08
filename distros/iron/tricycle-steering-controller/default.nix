
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-test-assets, std-srvs, steering-controllers-library }:
buildRosPackage {
  pname = "ros-iron-tricycle-steering-controller";
  version = "3.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/tricycle_steering_controller/3.27.0-1.tar.gz";
    name = "3.27.0-1.tar.gz";
    sha256 = "753c745edea4104c453e4bfeb6b50d6d30e1fdb6dbd41763b6dbbf6130ecb6eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle std-srvs steering-controllers-library ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Steering controller with tricycle kinematics. Rear fixed wheels are powering the vehicle and front wheel is steering.";
    license = with lib.licenses; [ asl20 ];
  };
}
