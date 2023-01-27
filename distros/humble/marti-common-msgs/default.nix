
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marti-common-msgs";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/humble/marti_common_msgs/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "f872e23fa031f8654d23dc59497b9b9aad983590a3565f81943cf1f97a966e91";
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
