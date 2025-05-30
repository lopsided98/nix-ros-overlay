
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, rclcpp, ros-environment, sqlite }:
buildRosPackage {
  pname = "ros-kilted-behaviortree-cpp";
  version = "4.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/kilted/behaviortree_cpp/4.7.0-1.tar.gz";
    name = "4.7.0-1.tar.gz";
    sha256 = "83e45f2076940ddc71769fa00219323b3026226813b999a6339b2646c99f5547";
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
