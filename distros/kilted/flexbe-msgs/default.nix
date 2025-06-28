
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-flexbe-msgs";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/kilted/flexbe_msgs/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "774ba621b6ad715915a9d85f2238bd71dd6abb349a69dd7a2a4f9b634556fefc";
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
