
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-rsl";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/rolling/rsl/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "26179e09df712a5740e98bb7268b33249f9bc66c5fbc45a0144f84b963aa0474";
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
