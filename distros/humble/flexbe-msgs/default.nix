
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-flexbe-msgs";
  version = "2.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_msgs/2.3.5-1.tar.gz";
    name = "2.3.5-1.tar.gz";
    sha256 = "340432727176360731daa40c6dad7ea4adc29ac123bcae48a4d8886f6649c5c4";
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
