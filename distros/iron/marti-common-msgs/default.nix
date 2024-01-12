
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-marti-common-msgs";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/iron/marti_common_msgs/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "59c2e2384fe7a087c40fbe19ef289f8c8a8ab29e2e5d240e44309ca87f2897e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_common_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
