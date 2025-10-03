
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rviz-resource-interfaces";
  version = "15.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz_resource_interfaces/15.0.7-1.tar.gz";
    name = "15.0.7-1.tar.gz";
    sha256 = "23e9386108768f393ffe8a62f9732a9f260d61257fdadc2cf3e8784d894e8645";
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
