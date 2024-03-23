
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, doxygen, eigen, fmt, git, range-v3, rclcpp, tcb-span, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-rsl";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/RSL-release/archive/release/rolling/rsl/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "11889b9ef3ac18f043ca701c0a587f3f020aa91e6560c8ba9847ce3bcccc6b15";
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
