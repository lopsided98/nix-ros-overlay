
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-status-msgs";
  version = "1.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_status_msgs/1.6.1-3.tar.gz";
    name = "1.6.1-3.tar.gz";
    sha256 = "c8b0bbe962446995dcba6b96d98a6e0924efafcf6fbf22b22be8e585e98a2441";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_status_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
