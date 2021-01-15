
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, controller-interface, controller-manager, controller-parameter-server, hardware-interface, rclcpp-lifecycle, sensor-msgs, test-robot-hardware, trajectory-msgs }:
buildRosPackage {
  pname = "ros-dashing-ros-controllers";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/dashing/ros_controllers/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "a2108c76270ab10071d023d2700b09b16f3b91bf5b8a3bd474ebaa186ebb23ae";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common controller-parameter-server test-robot-hardware ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-parameter-server hardware-interface rclcpp-lifecycle sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of ros_controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
