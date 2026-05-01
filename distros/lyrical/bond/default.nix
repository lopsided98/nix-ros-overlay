
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-bond";
  version = "4.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bond_core-release/archive/release/lyrical/bond/4.4.0-3.tar.gz";
    name = "4.4.0-3.tar.gz";
    sha256 = "ec25649a6cb7ef4d8bf0a4abd51ba3c6e630e276246d7257d18dfc530258ebc6";
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
