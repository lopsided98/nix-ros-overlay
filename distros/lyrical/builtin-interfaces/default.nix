
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-lyrical-builtin-interfaces";
  version = "2.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/lyrical/builtin_interfaces/2.4.5-1.tar.gz";
    name = "2.4.5-1.tar.gz";
    sha256 = "61ac3dff250aec653ef35a54807236fe988df94d18cf656042e5c3475c689bb5";
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
