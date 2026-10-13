
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-drone-core, tobas-drone-msgs, tobas-kdl-msgs-adapter, tobas-std-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-msgs-adapter";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_msgs_adapter/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "07b06fd88f7576c783d04e05d3835fe0307f25e02eb4b5d7150851923001f458";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime tobas-drone-core tobas-drone-msgs tobas-kdl-msgs-adapter tobas-std-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for Tobas vehicle, airframe, actuator, and propulsion configuration messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
