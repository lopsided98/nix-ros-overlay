
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-behaviortree-cpp-v3";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/foxy/behaviortree_cpp_v3/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "aedd57ba4fa79fe71e3db98de592b14a3d80dea6eabadfd2fe6b1cad4af07f40";
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
