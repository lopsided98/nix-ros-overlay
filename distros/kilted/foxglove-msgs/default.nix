
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-foxglove-msgs";
  version = "3.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/kilted/foxglove_msgs/3.2.6-1.tar.gz";
    name = "3.2.6-1.tar.gz";
    sha256 = "988d16f9d1905d3419349dd0ab1706352db13ed01d5383ae165137eaa9f2a616";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "foxglove_msgs provides visualization messages that are supported by Foxglove.";
    license = with lib.licenses; [ mit ];
  };
}
