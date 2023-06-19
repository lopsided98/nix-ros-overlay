
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-marti-introspection-msgs";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/iron/marti_introspection_msgs/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "23c4e375469713b69570fffa33d94d37736196611a410ec623cc90877269c7d2";
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
