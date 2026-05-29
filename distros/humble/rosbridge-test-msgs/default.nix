
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbridge-test-msgs";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_test_msgs/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "1c72012b58c6d98f5a2046d1feaa4e99f4b067b1b61df0c1621b752f31b345b1";
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
