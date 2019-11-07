
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, action-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_msgs-release/archive/release/dashing/turtlebot3_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "c2bd86a2ca197ced09cabe460665fc3f4f49bde1ffe919e9334d7b50159810e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs action-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs action-msgs rosidl-default-runtime builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Message and service types: custom messages and services for TurtleBot3 packages for ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
