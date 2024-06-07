
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-situational-graphs-msgs";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/situational_graphs_msgs-release/archive/release/iron/situational_graphs_msgs/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "6721bc7da890391f75e862e9c4bd7a508d07cbfb4f820846cdca13af1aef2a4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-generators rosidl-default-runtime sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Custom messages for s_graphs";
    license = with lib.licenses; [ gpl3Only ];
  };
}
