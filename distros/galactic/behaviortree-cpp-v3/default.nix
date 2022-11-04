
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, cppzmq, ncurses, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-galactic-behaviortree-cpp-v3";
  version = "3.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/galactic/behaviortree_cpp_v3/3.8.0-1.tar.gz";
    name = "3.8.0-1.tar.gz";
    sha256 = "4df6196aca55aa5086f6d38cedb764e28155105b1614e759d6a4514f8f90e267";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp boost cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
