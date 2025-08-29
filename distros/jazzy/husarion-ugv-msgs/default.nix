
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-husarion-ugv-msgs";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_ugv_ros-release/archive/release/jazzy/husarion_ugv_msgs/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "c964c49c0ef7f137c98d333d34769c05200d58835bdc07b389fc9484be2f9ca6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Custom messages for Husarion UGV";
    license = with lib.licenses; [ asl20 ];
  };
}
