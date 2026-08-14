
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbridge-test-msgs";
  version = "2.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_test_msgs/2.0.8-1.tar.gz";
    name = "2.0.8-1.tar.gz";
    sha256 = "005ec8a8eff6231d454dd42f9214b9597c04e9217783b646fd525fead7bd1ae5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service definitions used in internal tests for rosbridge packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
