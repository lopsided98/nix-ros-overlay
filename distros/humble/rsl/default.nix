
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-humble-rsl";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/humble/rsl/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f91c02fad94fff759843dc06c1f8de2451c3a1beb18fa46961a1939764ba53a1";
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
