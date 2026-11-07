
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-visualization-msgs";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_visualization_msgs/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "e74f185e9428262cea983b5f61d87632362f16a1d873aab1002a13c6f32dfd7c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 message definitions for Tobas GUI and visualization data.";
    license = with lib.licenses; [ asl20 ];
  };
}
