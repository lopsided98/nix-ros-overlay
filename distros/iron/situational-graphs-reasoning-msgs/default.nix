
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-situational-graphs-reasoning-msgs";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/situational_graphs_reasoning_msgs-release/archive/release/iron/situational_graphs_reasoning_msgs/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "7dc5bb9899c4b115505bab01e3ba0ecf2288f93ac73f326a1074657f7486e0c5";
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
