
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-raph-interfaces";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_common-release/archive/release/jazzy/raph_interfaces/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "b53fb3fdd990c1e3a45cf1e17f25fb5863b3c7eb6699a49cc6226c552817aa42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interface definitions for Raph Rover";
    license = with lib.licenses; [ mit ];
  };
}
