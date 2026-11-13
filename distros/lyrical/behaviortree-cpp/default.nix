
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, git, rclcpp, ros-environment, sqlite, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-behaviortree-cpp";
  version = "4.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/lyrical/behaviortree_cpp/4.11.1-1.tar.gz";
    name = "4.11.1-1.tar.gz";
    sha256 = "01021cd647dc1ea163de02325639807e1d6d7d5aaf9e8ae68d93f570bd564e9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp cppzmq rclcpp sqlite tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "This package provides the Behavior Trees core library.";
    license = with lib.licenses; [ mit ];
  };
}
