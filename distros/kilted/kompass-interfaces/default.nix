
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-kompass-interfaces";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/kilted/kompass_interfaces/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "eca6f42c4965f066f904cd940fa6930b6824a69bb6decb6517b5c326a643a841";
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
