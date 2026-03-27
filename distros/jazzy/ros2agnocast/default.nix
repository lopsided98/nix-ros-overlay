
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper }:
buildRosPackage {
  pname = "ros-jazzy-ros2agnocast";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/ros2agnocast/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "d02b8c5ff1fd51103befb7cb29dc0e97ca9f42e3ea2527aaba8a28604b0505cb";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
