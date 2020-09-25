
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-behaviortree-cpp-v3";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/eloquent/behaviortree_cpp_v3/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "07e21ae925cddc004d616bbd5443abb33d07a4718fe0527811a91619abd7b9f5";
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
