
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-sick-safevisionary-base";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_base-release/archive/release/rolling/sick_safevisionary_base/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "c5f17ae3ca5b216711e1822719ec1de890e7f72720a1f091bf540984e9fbc288";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The package provides the basic hardware interface to the SICK Safevisionary sensor";
    license = with lib.licenses; [ asl20 ];
  };
}
