
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-action-tutorials-interfaces";
  version = "0.20.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/action_tutorials_interfaces/0.20.8-1.tar.gz";
    name = "0.20.8-1.tar.gz";
    sha256 = "dea83a66951bd11e9baa050f2add455378beeff4fa8609cf0273a1dda0d34ba3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Action tutorials action";
    license = with lib.licenses; [ asl20 ];
  };
}
