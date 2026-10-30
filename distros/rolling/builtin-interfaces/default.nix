
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-rolling-builtin-interfaces";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/builtin_interfaces/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "4ece86bd4342f36862725c097fba56c94cdf9e1715832186dfa891089b11965d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-core-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = "A package containing message and service definitions for types defined in the OMG IDL Platform Specific Model.";
    license = with lib.licenses; [ asl20 ];
  };
}
