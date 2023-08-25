
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-rsl";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/humble/rsl/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "0f8473823bdb6bd92100ecc44827736dc6b51d8038f0785a7157b43abf98989e";
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
