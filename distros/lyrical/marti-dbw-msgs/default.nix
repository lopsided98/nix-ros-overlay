
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-dbw-msgs";
  version = "1.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_dbw_msgs/1.6.1-3.tar.gz";
    name = "1.6.1-3.tar.gz";
    sha256 = "fe031c041c7682ca04ab2201fb444a0d7942ba79ba932b4988ab613ef30dc1b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_dbw_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
