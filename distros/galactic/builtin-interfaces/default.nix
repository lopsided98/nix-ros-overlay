
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-builtin-interfaces";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/galactic/builtin_interfaces/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "f982fd32cff8f6df4f06bc3756ff676e2f946bc4f607c47da14ff060933cab1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing message and service definitions for types defined in the OMG IDL Platform Specific Model.'';
    license = with lib.licenses; [ asl20 ];
  };
}
