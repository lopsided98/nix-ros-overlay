
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-kilted-rsl";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/kilted/rsl/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "b1b35a6e78ca2cbe33a290b1aa5e4e9f8834fe6680e771dd630a645c951c3a44";
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
