
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-marti-visualization-msgs";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/humble/marti_visualization_msgs/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "99c041386e3626c2cd51774fd3fcf5f18dca8e6cdcd2567bbb1676ad2116fed0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_visualization_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
