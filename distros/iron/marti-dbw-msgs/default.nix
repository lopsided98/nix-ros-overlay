
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-marti-dbw-msgs";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/iron/marti_dbw_msgs/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "7369c7f7015dc6e83341ba9a1ee17c88f7e824678bea2878b69dfa249304b638";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_dbw_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
