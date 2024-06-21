
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages, simde }:
buildRosPackage {
  pname = "ros-jazzy-proxsuite";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/jazzy/proxsuite/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "b3bad43f16f53a1e3896af5d80a7f78879c189457f36ece8d8c26644708c0666";
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
