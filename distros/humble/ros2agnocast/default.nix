
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper, ament-index-python }:
buildRosPackage {
  pname = "ros-humble-ros2agnocast";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/ros2agnocast/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "771003b8d533fab0254f0089f86cbf93bd9742bfcb5fd3f991545c148d5b1226";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ament-index-python ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
