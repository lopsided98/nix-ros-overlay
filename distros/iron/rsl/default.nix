
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-iron-rsl";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/iron/rsl/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "b75e089f109ae376e15949e8789cb947591e616c236c379730ea3a20738a3f20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros doxygen git ];
  checkInputs = [ clang range-v3 ];
  propagatedBuildInputs = [ eigen fmt rclcpp tcb-span tl-expected ];
  nativeBuildInputs = [ ament-cmake-ros doxygen git ];

  meta = {
    description = ''ROS Support Library'';
    license = with lib.licenses; [ bsd3 ];
  };
}
