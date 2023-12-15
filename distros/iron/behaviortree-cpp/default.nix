
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, rclcpp, ros-environment, sqlite }:
buildRosPackage {
  pname = "ros-iron-behaviortree-cpp";
  version = "4.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/iron/behaviortree_cpp/4.4.2-1.tar.gz";
    name = "4.4.2-1.tar.gz";
    sha256 = "6ef2a334645266ad5f3dc96f44f59e15d09069bdbd2a86384a90b24381b0cd20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp cppzmq rclcpp sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
