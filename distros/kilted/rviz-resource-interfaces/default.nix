
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rviz-resource-interfaces";
  version = "15.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz_resource_interfaces/15.0.2-1.tar.gz";
    name = "15.0.2-1.tar.gz";
    sha256 = "de804b08f894ccaa3f93c8f82d88e4bf30e2669631f3efe78d8c3a3cd1e3e467";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS interfaces for working with resources like meshes.";
    license = with lib.licenses; [ asl20 ];
  };
}
