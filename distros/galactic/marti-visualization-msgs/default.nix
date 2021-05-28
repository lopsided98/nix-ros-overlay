
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-marti-visualization-msgs";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/galactic/marti_visualization_msgs/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "aa5072d64a71497b8a303c2d8c289cbf56830e414b66c3917f8a6c9237373688";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_visualization_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
