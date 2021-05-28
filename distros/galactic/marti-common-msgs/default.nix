
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-marti-common-msgs";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/galactic/marti_common_msgs/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "eac35ebb1560e46cbc5e7d9da185d872829d1d6de969fc26d14ac8d225ec82e0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_common_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
