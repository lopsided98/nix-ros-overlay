
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-resource-retriever-interfaces";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/lyrical/resource_retriever_interfaces/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "36d4ddebe4067d3ae93a19124bf11a6e64ae36969931239eedc53e86a597af2b";
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
