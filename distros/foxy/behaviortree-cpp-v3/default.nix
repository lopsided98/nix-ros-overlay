
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, cppzmq, ncurses, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-foxy-behaviortree-cpp-v3";
  version = "3.8.0-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/foxy/behaviortree_cpp_v3/3.8.0-1.tar.gz";
    name = "3.8.0-1.tar.gz";
    sha256 = "cc9f077d023e9bc01723c53ba0f50fe797e0af985e3f37620ac648ff8b9b891d";
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
