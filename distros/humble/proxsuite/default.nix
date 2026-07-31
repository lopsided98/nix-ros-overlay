
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages, simde }:
buildRosPackage {
  pname = "ros-humble-proxsuite";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/humble/proxsuite/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "5b70a87682784f61f700e547492fa94f061f78329cea0534bfb8a8e2deda35a4";
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
