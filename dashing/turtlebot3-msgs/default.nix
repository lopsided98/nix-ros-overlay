
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage rec {
  pname = "ros-dashing-turtlebot3-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_msgs-release/archive/release/dashing/turtlebot3_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "b134bdc2031d07e8f817e506096bc841b6d12a75e6d42eca331d9294e58f7925";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Message and service types: custom messages and services for TurtleBot3 packages for ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
