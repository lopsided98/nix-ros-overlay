
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, control-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-ur-msgs";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_msgs-release/archive/release/rolling/ur_msgs/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "343253a6db2574dcc2248e2544e9456695f41d3ed067844c03da2b9345b6b926";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces control-msgs geometry-msgs rosidl-default-runtime std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service definitions for interacting with Universal Robots robot controllers.";
    license = with lib.licenses; [ bsd3 ];
  };
}
