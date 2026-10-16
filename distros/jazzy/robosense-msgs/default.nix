
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-robosense-msgs";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/robosense_msgs/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "e7c32698a690a6aae1be9c416a6f07a7d3af23b7b348bebf171e3f389639ed83";
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
