
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, git, rclcpp, ros-environment, sqlite, tinyxml-2, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-lyrical-behaviortree-cpp";
  version = "4.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/lyrical/behaviortree_cpp/4.9.0-3.tar.gz";
    name = "4.9.0-3.tar.gz";
    sha256 = "fbf0d3b1b5ef2618de43e0c012f6a2371b0fbb60d7ba8e936308790d4f1b8550";
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
