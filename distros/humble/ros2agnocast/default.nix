
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper }:
buildRosPackage {
  pname = "ros-humble-ros2agnocast";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/ros2agnocast/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "183662c3056f7bd975f913666fd775fdab0ed01af60ef8b07f1ba5751e9a6f15";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
