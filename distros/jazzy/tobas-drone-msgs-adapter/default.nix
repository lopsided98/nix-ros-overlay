
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-drone-core, tobas-drone-msgs, tobas-kdl-msgs-adapter, tobas-std-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-msgs-adapter";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_msgs_adapter/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "e819e46f588eba02b4a1f53f0ed75dc177fd3c4ad17d36887947752d1cfef096";
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
