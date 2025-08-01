
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-rsl";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/humble/rsl/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "65f0cf5a52b9eeefeaa05b54f26dbbce3da65b54b66f2f6ea81de40a1c5badbb";
  };

  buildType = "catkin";
  buildInputs = [ doxygen ];
  checkInputs = [ ament-cmake-ros clang git range-v3 ];
  propagatedBuildInputs = [ eigen fmt rclcpp tcb-span tl-expected ];
  nativeBuildInputs = [ doxygen ];

  meta = {
    description = "ROS Support Library";
    license = with lib.licenses; [ bsd3 ];
  };
}
