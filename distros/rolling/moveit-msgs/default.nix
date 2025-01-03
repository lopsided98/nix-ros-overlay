
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, object-recognition-msgs, octomap-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-msgs";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_msgs-release/archive/release/rolling/moveit_msgs/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "24c032e313dc0594b58cc98834593bd119582b622518adf37dfe9229b43cd8f3";
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
