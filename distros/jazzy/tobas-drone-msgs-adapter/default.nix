
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-drone-core, tobas-drone-msgs, tobas-kdl-msgs-adapter, tobas-std-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-drone-msgs-adapter";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_drone_msgs_adapter/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "f3dd3f00c6a32e06c1f6f2cc80d29b1621d99af838b9c3321931fb3f1c40a29c";
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
