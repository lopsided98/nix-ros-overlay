
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, cppzmq, ncurses, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-behaviortree-cpp-v3";
  version = "3.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/rolling/behaviortree_cpp_v3/3.8.6-1.tar.gz";
    name = "3.8.6-1.tar.gz";
    sha256 = "c31634fe827649acba750d698f5e2ded36addae086093774e50f87802ffe3fed";
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
