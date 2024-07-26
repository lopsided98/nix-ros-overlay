
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-situational-graphs-msgs";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/situational_graphs_msgs-release/archive/release/humble/situational_graphs_msgs/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "8b2d327cf88d31eee16faa7675accfc318875f4ccfd2c7391d56b26c08d5101c";
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
