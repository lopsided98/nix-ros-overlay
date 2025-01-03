
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-situational-graphs-reasoning-msgs";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/situational_graphs_reasoning_msgs-release/archive/release/humble/situational_graphs_reasoning_msgs/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "1246e9b490039f7988d4257bdaa7e5eeaea82e3b930b739db845738a31279261";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Custom reasoning msgs";
    license = with lib.licenses; [ gpl3Only ];
  };
}
