
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-behaviortree-cpp-v3";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/foxy/behaviortree_cpp_v3/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "a543619e1af6ab267b6be50d05b437eb48f4909327d1e03cd2bc57b8f17d88e1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
