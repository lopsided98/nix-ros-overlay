
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, control-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ur-msgs";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_msgs-release/archive/release/lyrical/ur_msgs/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "f9cb5b7b2e7ae1a6e32e20595f32c378dc8164be317cd9464fa216eb60338e9a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces control-msgs geometry-msgs rosidl-default-runtime std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service definitions for interacting with Universal Robots robot controllers.";
    license = with lib.licenses; [ bsd3 ];
  };
}
