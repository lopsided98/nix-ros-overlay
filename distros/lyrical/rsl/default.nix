
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-lyrical-rsl";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/lyrical/rsl/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "a203a47d8f0e242fa43f0d29df64f9248a39674a63bfdd98c0d578469b2a85cd";
  };

  buildType = "cmake";
  buildInputs = [ doxygen ];
  checkInputs = [ ament-cmake-ros clang git range-v3 ];
  propagatedBuildInputs = [ eigen fmt rclcpp tcb-span tl-expected-nixpkgs ];
  nativeBuildInputs = [ doxygen ];

  meta = {
    description = "ROS Support Library";
    license = with lib.licenses; [ bsd3 ];
  };
}
