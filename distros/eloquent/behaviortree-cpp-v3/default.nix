
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-behaviortree-cpp-v3";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/eloquent/behaviortree_cpp_v3/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "9f85d3b92b116badb013e199a90b42380d2a04d37844b0a2da947618f04c0207";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
