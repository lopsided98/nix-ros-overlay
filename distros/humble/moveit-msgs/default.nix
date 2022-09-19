
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, object-recognition-msgs, octomap-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-moveit-msgs";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_msgs-release/archive/release/humble/moveit_msgs/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "5e706efb6e05e013c20b58067afd76d41b48ac14dd53534dacc83a46854f8355";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ action-msgs geometry-msgs object-recognition-msgs octomap-msgs rosidl-default-runtime sensor-msgs shape-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages, services and actions used by MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
