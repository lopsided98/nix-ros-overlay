
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-cartographer";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/humble/turtlebot3_cartographer/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "e4c91424a42e773b3f6bf41c56cb43bd4e975ca039cc7a72ae4ea64ab431ef35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
