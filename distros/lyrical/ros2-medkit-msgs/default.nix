
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-msgs";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_msgs/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "1757a043c1c2ecc3649e00c8f8d7525e3d1cc2025dcd451c88b7720092d963dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces diagnostic-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 message and service definitions for ros2_medkit fault management";
    license = with lib.licenses; [ asl20 ];
  };
}
