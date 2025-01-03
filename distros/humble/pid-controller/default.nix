
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, angles, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, parameter-traits, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, std-srvs }:
buildRosPackage {
  pname = "ros-humble-pid-controller";
  version = "2.40.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/pid_controller/2.40.0-1.tar.gz";
    name = "2.40.0-1.tar.gz";
    sha256 = "c6f38fb36ef745df0c27e8c52ca8a6a84d17e5e82c5624ebebf794e484e9142f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface hardware-interface parameter-traits pluginlib rclcpp rclcpp-lifecycle realtime-tools std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller based on PID implememenation from control_toolbox package.";
    license = with lib.licenses; [ asl20 ];
  };
}
