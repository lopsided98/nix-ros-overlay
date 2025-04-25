
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-rolling-builtin-interfaces";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/builtin_interfaces/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "5c32adca1c68277d910045836a1b3f3cd3619bcb817dddd93d3b4528fba11b15";
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
