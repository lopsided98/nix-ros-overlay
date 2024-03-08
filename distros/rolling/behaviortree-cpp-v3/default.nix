
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, cppzmq, ncurses, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-behaviortree-cpp-v3";
  version = "3.8.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/rolling/behaviortree_cpp_v3/3.8.6-2.tar.gz";
    name = "3.8.6-2.tar.gz";
    sha256 = "49d57522b1492418ae612d1b9c5b1d561d38c9981e708e89c50ce113b6fb3c41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp boost cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
