
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-iron-rsl";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/iron/rsl/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "8c9713f28b5ce3f575dbb89f7308620c1349a330e5249a858b7c72753b356234";
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
