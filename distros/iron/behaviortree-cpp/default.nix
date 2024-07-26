
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, rclcpp, ros-environment, sqlite }:
buildRosPackage {
  pname = "ros-iron-behaviortree-cpp";
  version = "4.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/iron/behaviortree_cpp/4.6.2-1.tar.gz";
    name = "4.6.2-1.tar.gz";
    sha256 = "26d5f8e905c68ace5626733aa351d9f77bc4f630da8f61c26a3e388e5cf2f7e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp cppzmq rclcpp sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides the Behavior Trees core library.";
    license = with lib.licenses; [ mit ];
  };
}
