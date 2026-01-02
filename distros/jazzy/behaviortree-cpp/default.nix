
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, git, rclcpp, ros-environment, sqlite, tinyxml-2, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-jazzy-behaviortree-cpp";
  version = "4.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/jazzy/behaviortree_cpp/4.8.3-1.tar.gz";
    name = "4.8.3-1.tar.gz";
    sha256 = "7df011ec2444da8a13445fa3abb65b6ed0f4c1e1c9c0d1f8796820485fa2e3cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp cppzmq rclcpp sqlite tinyxml-2 tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "This package provides the Behavior Trees core library.";
    license = with lib.licenses; [ mit ];
  };
}
