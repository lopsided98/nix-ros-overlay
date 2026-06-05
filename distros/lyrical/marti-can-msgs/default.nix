
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-can-msgs";
  version = "1.6.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_can_msgs/1.6.1-4.tar.gz";
    name = "1.6.1-4.tar.gz";
    sha256 = "1561becb3cd985bae85eb5f791ab20c52a9c04829c5e814c653e94edff487d79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_can_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
