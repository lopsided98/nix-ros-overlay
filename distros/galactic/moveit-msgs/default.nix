
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, object-recognition-msgs, octomap-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-galactic-moveit-msgs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_msgs-release/archive/release/galactic/moveit_msgs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "cc8f2c74459e4702fa373e12a463b98b58260170cd1fae1c868299c9d1abbe7c";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ action-msgs geometry-msgs object-recognition-msgs octomap-msgs rosidl-default-runtime sensor-msgs shape-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages, services and actions used by MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
