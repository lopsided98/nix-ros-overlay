
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper }:
buildRosPackage {
  pname = "ros-humble-ros2agnocast";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/ros2agnocast/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "29242d08ee4e79c4b45035f6b29173fddafc78e574c587168f048d2be2dd1bb7";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
