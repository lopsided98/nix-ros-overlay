
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages, simde }:
buildRosPackage {
  pname = "ros-rolling-proxsuite";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/rolling/proxsuite/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "8fde7375a0595dc1fdc43fd7c1fc476a330344c0237eb7f3bc6634f214ce7514";
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
