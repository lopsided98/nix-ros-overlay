
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-humble-behaviortree-cpp-v3";
  version = "3.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/humble/behaviortree_cpp_v3/3.6.0-3.tar.gz";
    name = "3.6.0-3.tar.gz";
    sha256 = "ab27fe4ab8c2cfac6c8fe0008bf76b85ac61a1a86239372886cbd1e0140b694a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
