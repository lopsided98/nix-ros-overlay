
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, git, rclcpp, ros-environment, sqlite, tinyxml-2, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-behaviortree-cpp";
  version = "4.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/rolling/behaviortree_cpp/4.8.3-1.tar.gz";
    name = "4.8.3-1.tar.gz";
    sha256 = "2dc4f785495dc68c520c30dddddcee572c3a9b90a2ea4256472f5147c13dbdc4";
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
