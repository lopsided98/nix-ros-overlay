
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, cppzmq, ncurses, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-behaviortree-cpp-v3";
  version = "3.8.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/kilted/behaviortree_cpp_v3/3.8.6-3.tar.gz";
    name = "3.8.6-3.tar.gz";
    sha256 = "8002a165a8ffdd167eeab06e3dd6f36bddf65098584c3d8446156ba751a31de7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp boost cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides the Behavior Trees core library.";
    license = with lib.licenses; [ mit ];
  };
}
