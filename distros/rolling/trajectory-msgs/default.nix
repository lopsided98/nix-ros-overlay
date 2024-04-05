
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-trajectory-msgs";
  version = "5.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/trajectory_msgs/5.3.1-1.tar.gz";
    name = "5.3.1-1.tar.gz";
    sha256 = "513fe0c274c15d5a8b60d20e4ecda6c86e78f690af7bda1480f8b268abe3205d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some robot trajectory message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
