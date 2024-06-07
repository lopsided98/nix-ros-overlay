
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, object-recognition-msgs, octomap-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-moveit-msgs";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_msgs-release/archive/release/jazzy/moveit_msgs/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "e610300df05de5ca4de90caa98b8edfe696400967f35967bdf11f530e448c338";
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
