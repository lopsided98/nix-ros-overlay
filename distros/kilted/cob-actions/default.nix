
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, actionlib-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-cob-actions";
  version = "2.8.12-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cob_common-release/archive/release/kilted/cob_actions/2.8.12-2.tar.gz";
    name = "2.8.12-2.tar.gz";
    sha256 = "534de01579fe47f3ff661cfabd92a8c2e0f1f0980d4059416dfb79589f51ce87";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs actionlib-msgs builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This Package contains Care-O-bot specific action definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
