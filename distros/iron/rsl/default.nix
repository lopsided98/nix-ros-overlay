
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-iron-rsl";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/iron/rsl/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "638007e2ec7405c4cea87cb6a8f1b450d87ee223edb79999dc8e2c6255930f5c";
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
