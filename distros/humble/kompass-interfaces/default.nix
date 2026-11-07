
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-kompass-interfaces";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/humble/kompass_interfaces/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "0eada1567ca2d3e968c7c710e91aaa9897e15c3f9a342db4f7913d7a2458582c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS2 Interfaces for Kompass";
    license = with lib.licenses; [ mit ];
  };
}
