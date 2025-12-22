
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_actionlib_msgs, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-cob-actions";
  version = "2.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cob_common-release/archive/release/rolling/cob_actions/2.8.12-1.tar.gz";
    name = "2.8.12-1.tar.gz";
    sha256 = "a7741828f9189417d3c4caacd05b90f4e4912c5f94b3263cc6d71749e6107ffd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_actionlib_msgs action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This Package contains Care-O-bot specific action definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
