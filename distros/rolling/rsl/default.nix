
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-rsl";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/rolling/rsl/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "9b49ad5f45221c9ff22e97cba92c9238ec694ef218963caeafda19c1b269287e";
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
