
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-marti-status-msgs";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/iron/marti_status_msgs/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "d846b38ce80a997e17eaf09d4bacd74f20f7c5e21fa80441ae089f10cd98f02b";
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
