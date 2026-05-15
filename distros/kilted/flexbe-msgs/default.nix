
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-flexbe-msgs";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/kilted/flexbe_msgs/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "87327df7b1e325382549e5d5744e7881570e430a316e275875f369ee0cf573db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-generators rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "flexbe_msgs provides the messages used by FlexBE.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
