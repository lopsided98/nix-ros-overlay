
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-behaviortree-cpp-v3";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/eloquent/behaviortree_cpp_v3/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "dab79690d78b1ddc80245154919d3470c51ab824bcb5d90e05a624c7a5feedd6";
  };

  buildType = "catkin";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
