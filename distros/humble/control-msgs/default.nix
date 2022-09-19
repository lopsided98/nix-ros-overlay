
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-control-msgs";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_msgs-release/archive/release/humble/control_msgs/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "0c0f3041e7cb83d3dbc25f2a6658155401b4fb9d71e29240a28a09e303a3d4bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''control_msgs contains base messages and actions useful for
    controlling robots.  It provides representations for controller
    setpoints and joint and cartesian trajectories.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
