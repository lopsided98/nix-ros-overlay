
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper }:
buildRosPackage {
  pname = "ros-humble-ros2agnocast";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/ros2agnocast/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "e2181cf5b66d9335905d36a0d15b811f9bc7cebd964141152a3821abde77303f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
