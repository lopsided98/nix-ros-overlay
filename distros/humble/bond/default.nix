
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-bond";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/humble/bond/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "79901ad238726b2cba0874ec355ca7004b1521e27ba16bdf11950455be1560bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A bond allows two processes, A and B, to know when the other has
    terminated, either cleanly or by crashing.  The bond remains
    connected until it is either broken explicitly or until a
    heartbeat times out.";
    license = with lib.licenses; [ bsd3 ];
  };
}
