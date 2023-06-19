
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-marti-introspection-msgs";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/foxy/marti_introspection_msgs/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "fda0d2c04142b974e858e69e96fb3aafe8fb548cdbcd9d99df3b1d53ac376353";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_introspection_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
