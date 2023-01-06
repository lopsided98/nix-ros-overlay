
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-marti-can-msgs";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/rolling/marti_can_msgs/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "9c495696250efe22c869585c66591b5b4657a078f3d79fdcbc2c5c00b23b0ad0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_can_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
