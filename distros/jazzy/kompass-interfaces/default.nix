
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-kompass-interfaces";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/jazzy/kompass_interfaces/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "af47c98911e964ef0ac67e1335de80d58292d5f68360b6c334b9b8eebb5bc4b9";
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
