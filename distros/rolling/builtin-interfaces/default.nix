
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-rolling-builtin-interfaces";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/builtin_interfaces/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "da76439a75eb701463b855d89627df46282cd90afd3086dd91e934908a63ff5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-core-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = ''A package containing message and service definitions for types defined in the OMG IDL Platform Specific Model.'';
    license = with lib.licenses; [ asl20 ];
  };
}
