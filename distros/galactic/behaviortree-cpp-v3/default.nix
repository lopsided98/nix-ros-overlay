
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-behaviortree-cpp-v3";
  version = "3.5.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/galactic/behaviortree_cpp_v3/3.5.6-2.tar.gz";
    name = "3.5.6-2.tar.gz";
    sha256 = "251cccbf35faa19c2161a4320935beb0de430c6c64d6a07e8976895471e23854";
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
