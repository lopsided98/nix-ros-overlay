
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, cppzmq, ncurses, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-behaviortree-cpp-v3";
  version = "3.8.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/rolling/behaviortree_cpp_v3/3.8.3-4.tar.gz";
    name = "3.8.3-4.tar.gz";
    sha256 = "d7ac0bb6684af8e5f94bfb9f1c79cf93393eeb6f240bd469ab5bc633b8edacec";
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
