
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, object-recognition-msgs, octomap-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-moveit-msgs";
  version = "2.7.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_msgs-release/archive/release/lyrical/moveit_msgs/2.7.1-3.tar.gz";
    name = "2.7.1-3.tar.gz";
    sha256 = "df7fe9f318dab88edfe2741c7b2e57c28c8bbc037743198bba571b1b59f0114c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ action-msgs geometry-msgs object-recognition-msgs octomap-msgs rosidl-default-runtime sensor-msgs shape-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages, services and actions used by MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
