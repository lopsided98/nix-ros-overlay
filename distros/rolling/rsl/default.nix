
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-rolling-rsl";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/rolling/rsl/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "13035a34a78a3c887d452c235f64b4f9a858d240b3548bf9af94fdd2dfa08717";
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
