
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper }:
buildRosPackage {
  pname = "ros-humble-ros2agnocast";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/ros2agnocast/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "cee2489ed17766609f6a20bf6fa2a67c45fcbef56e2e5e25e8fcc72c2010b934";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
