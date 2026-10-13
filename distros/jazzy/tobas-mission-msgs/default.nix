
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-msgs";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_msgs/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "38469d2f5854f669d4fb70e58fa7700ab9fef35a9652706225863ffde4b844e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 mission messages and action definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
