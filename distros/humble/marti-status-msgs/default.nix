
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-marti-status-msgs";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/humble/marti_status_msgs/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "71852d18efb34f3ccbe3252246261d8a70588ba709c8e35665e83d4b55683049";
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
