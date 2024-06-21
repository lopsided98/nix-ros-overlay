
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-jazzy-rsl";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/jazzy/rsl/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "46536dc65f13eb3dccfbe2ccc4ffd0356e70f177ca64cbdf7bb8e3df9cf90875";
  };

  buildType = "catkin";
  buildInputs = [ doxygen ];
  checkInputs = [ clang git range-v3 ];
  propagatedBuildInputs = [ eigen fmt rclcpp tcb-span tl-expected ];
  nativeBuildInputs = [ doxygen ];

  meta = {
    description = "ROS Support Library";
    license = with lib.licenses; [ bsd3 ];
  };
}
