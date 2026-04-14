
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-robosense-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/robosense_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "17cb96547f802fa54f94509f655c16f36bf318eb4f591cf8aa156fe9d9cdedc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ autoware-cmake rosidl-default-generators ];

  meta = {
    description = "Robosense message types for Nebula";
    license = with lib.licenses; [ asl20 ];
  };
}
