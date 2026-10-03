
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-visualization-msgs";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_visualization_msgs/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "92772c3aebad4020aafc3afb8307d6ed4034f8cf120c21a47efebe69c2244f0f";
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
