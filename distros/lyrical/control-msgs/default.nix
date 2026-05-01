
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, diagnostic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-control-msgs";
  version = "6.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_msgs-release/archive/release/lyrical/control_msgs/6.9.0-3.tar.gz";
    name = "6.9.0-3.tar.gz";
    sha256 = "f4a02026d6f4debc0695c548a100ff1f42a2f30e30d73c715e0097b2938faddb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces diagnostic-msgs geometry-msgs rosidl-default-runtime sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "control_msgs contains base messages and actions useful for
    controlling robots. It provides representations for controller
    setpoints and joint and cartesian trajectories.";
    license = with lib.licenses; [ bsd3 ];
  };
}
