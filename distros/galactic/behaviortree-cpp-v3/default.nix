
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-behaviortree-cpp-v3";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp-release/archive/release/galactic/behaviortree_cpp_v3/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "f758f7b28a9bd5c8f320b60f4dde01e4e5824c35d8188e604a6ba5cee3baf810";
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
