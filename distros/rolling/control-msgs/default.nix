
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-control-msgs";
  version = "6.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_msgs-release/archive/release/rolling/control_msgs/6.6.0-1.tar.gz";
    name = "6.6.0-1.tar.gz";
    sha256 = "18cf19a15f6c7b102031db242348fc24d78aee5b8206be17d6c1fc0459b242bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces diagnostic-msgs geometry-msgs rosidl-default-runtime sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "control_msgs contains base messages and actions useful for
    controlling robots. It provides representations for controller
    setpoints and joint and cartesian trajectories.";
    license = with lib.licenses; [ bsd3 ];
  };
}
