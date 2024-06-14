
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages, simde }:
buildRosPackage {
  pname = "ros-humble-proxsuite";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/humble/proxsuite/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "16617d8b126e84c54d2acd8f360676357b2c7111f75eeec393a4f43942c34b58";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  checkInputs = [ matio ];
  propagatedBuildInputs = [ eigen python3Packages.numpy python3Packages.scipy simde ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Advanced Proximal Optimization Toolbox";
    license = with lib.licenses; [ bsd2 ];
  };
}
