
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, ament-lint-common, test-msgs, rcl-action, ament-cmake-gtest, rclcpp, ament-cmake-ros, action-msgs, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rclcpp-action";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/crystal/rclcpp_action/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "4d76ff4572c3b0e802314b47bfca794d51ccd5ccb2996b8a33b7436656e13f68";
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
