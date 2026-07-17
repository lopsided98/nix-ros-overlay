
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-resource-retriever-interfaces";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever_service-release/archive/release/lyrical/resource_retriever_interfaces/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "a690d46ade8fa5a3aaae0d4d236804fdf93f3821437a930700d6a00a7163aa60";
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
