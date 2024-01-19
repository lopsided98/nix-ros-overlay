
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclcpp-wait-set";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclcpp_wait_set/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "0e088de926b40717d0c2dbed352183ea3c023947146d1659f5341ba36905fb46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example of how to use the rclcpp::WaitSet directly.'';
    license = with lib.licenses; [ asl20 ];
  };
}
