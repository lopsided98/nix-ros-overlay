
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-test-assets, std-srvs, steering-controllers-library }:
buildRosPackage {
  pname = "ros-humble-tricycle-steering-controller";
  version = "2.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/tricycle_steering_controller/2.29.0-1.tar.gz";
    name = "2.29.0-1.tar.gz";
    sha256 = "77f3ba1d76f56f281bffee00eda39d855aa112a98c388b47c3ea1f31f1897e2c";
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
