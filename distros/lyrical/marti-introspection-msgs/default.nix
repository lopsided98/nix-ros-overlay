
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-introspection-msgs";
  version = "1.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_introspection_msgs/1.6.1-3.tar.gz";
    name = "1.6.1-3.tar.gz";
    sha256 = "ae7366b867ee8fe76b63e9c40fe4d6409c32f697d37af5e900571399fa23134f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_introspection_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
