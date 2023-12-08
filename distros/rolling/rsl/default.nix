
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-rsl";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/rolling/rsl/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a854297851b2e745278cbb1f63409b782cb57d2da3611d787563e0af8fce018f";
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
