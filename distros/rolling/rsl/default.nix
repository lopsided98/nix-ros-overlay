
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-rsl";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/rolling/rsl/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "f3547325309488340275542e6da7d69675cee90d7cf8accb42f6f403914d3208";
  };

  buildType = "catkin";
  buildInputs = [ doxygen ];
  checkInputs = [ clang git range-v3 ];
  propagatedBuildInputs = [ eigen fmt rclcpp tcb-span tl-expected ];
  nativeBuildInputs = [ doxygen ];

  meta = {
    description = ''ROS Support Library'';
    license = with lib.licenses; [ bsd3 ];
  };
}
