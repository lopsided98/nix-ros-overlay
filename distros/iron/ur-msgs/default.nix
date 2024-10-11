
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-ur-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_msgs-release/archive/release/iron/ur_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "aad7eacba4e5f88ea7a4865945552d34d1fad85a67c6254e22d14097d2210081";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service definitions for interacting with Universal Robots robot controllers.";
    license = with lib.licenses; [ bsd3 ];
  };
}
