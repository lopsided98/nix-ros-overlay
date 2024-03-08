
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-test-assets, std-srvs, steering-controllers-library }:
buildRosPackage {
  pname = "ros-rolling-tricycle-steering-controller";
  version = "4.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/tricycle_steering_controller/4.6.0-2.tar.gz";
    name = "4.6.0-2.tar.gz";
    sha256 = "95c5b9a186d36c50e264d729dce60beab3aed6f39b0aaa87055e77855c462d4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle std-srvs steering-controllers-library ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Steering controller with tricycle kinematics. Rear fixed wheels are powering the vehicle and front wheel is steering.'';
    license = with lib.licenses; [ asl20 ];
  };
}
