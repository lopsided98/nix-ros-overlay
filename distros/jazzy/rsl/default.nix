
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-jazzy-rsl";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/jazzy/rsl/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "30971fa2ef9eb70b7d68d6e6dfcf3347f87d45374430137bc691ae9811346009";
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
