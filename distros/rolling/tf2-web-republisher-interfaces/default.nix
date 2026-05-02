
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-tf2-web-republisher-interfaces";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_web_republisher-release/archive/release/rolling/tf2_web_republisher_interfaces/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "b2ec4859d0685449174685a9eac3dd1472644a689ffb7fbac351890cc2620aa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interface definitions for tf2_web_republisher";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
