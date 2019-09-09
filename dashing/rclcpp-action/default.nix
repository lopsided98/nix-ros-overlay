
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, ament-lint-common, test-msgs, rcl-action, ament-cmake-gtest, rclcpp, ament-cmake-ros, action-msgs, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rclcpp-action";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp_action/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "49d50c883cf0057faccc7ed80905eae13b4c39d45cdc74fbca55b85cdbf46ad5";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rosidl-generator-c ament-cmake rclcpp action-msgs rcl-action ];
  checkInputs = [ test-msgs ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-generator-c ament-cmake rclcpp action-msgs rcl-action ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Adds action APIs for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
