
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-marti-visualization-msgs";
  version = "1.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/jazzy/marti_visualization_msgs/1.5.2-3.tar.gz";
    name = "1.5.2-3.tar.gz";
    sha256 = "b82d4a01c86abc6d0aa9090faa55c88bb309c40f2daabfca220f0266084d74be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_visualization_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
