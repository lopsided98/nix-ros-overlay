
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper, ament-index-python }:
buildRosPackage {
  pname = "ros-jazzy-ros2agnocast";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/ros2agnocast/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "d5674d156bc4b39fabbf0b474644fbeb2d9207bca692f21bbaed49a0a5eee435";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ament-index-python ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
