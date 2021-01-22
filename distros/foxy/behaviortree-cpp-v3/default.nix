
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-behaviortree-cpp-v3";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/foxy/behaviortree_cpp_v3/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "0ee1e9ea2e67b8a769d45cad54798d4f6fae0fbb6dba49dd273993263dcd18c8";
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
