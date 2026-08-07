
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-jsk-footstep-msgs";
  version = "5.0.1-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/kilted/jsk_footstep_msgs/5.0.1-3.tar.gz";
    name = "5.0.1-3.tar.gz";
    sha256 = "c0524aaf3921a02502f5c0c0f8a817b94a57ca2e927a5f729d89ad31a42991bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "jsk_footstep_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
