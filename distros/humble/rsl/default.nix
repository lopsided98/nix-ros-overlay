
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-rsl";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/humble/rsl/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "95871ec8819069f9914cff2a99f5201df9bc544b082bf08b23ab20af5e8f778f";
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
