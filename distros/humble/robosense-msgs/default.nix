
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-robosense-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/robosense_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "c482368a5a8ce216aa1cb11c6e76507791ca161e05f398bbac55d99085d2663e";
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
