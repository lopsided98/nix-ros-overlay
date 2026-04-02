
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper }:
buildRosPackage {
  pname = "ros-jazzy-ros2agnocast";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/ros2agnocast/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "d72ae1a5297c6601a0904c8a8e88ffda445dbceabf8ebef63fe7a7153f28c9c3";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
