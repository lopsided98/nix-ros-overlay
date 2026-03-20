
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, agnocast-ioctl-wrapper }:
buildRosPackage {
  pname = "ros-jazzy-ros2agnocast";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/ros2agnocast/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "983e1859aa7e21ce3a6b110c6f60fac0cc08f2314e6bcb0729e399fe3d940149";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ agnocast-ioctl-wrapper ];

  meta = {
    description = "The ROS 2 command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
