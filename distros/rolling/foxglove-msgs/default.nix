
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-foxglove-msgs";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/rolling/foxglove_msgs/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "10cda26600dc55be067804e47039b22da2abe11c65ea1ad72d9f339a3a14fcea";
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
