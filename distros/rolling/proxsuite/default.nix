
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages, simde }:
buildRosPackage {
  pname = "ros-rolling-proxsuite";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/rolling/proxsuite/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "34b1f3383ecb72a704c2158ff4f3e91f131666af49feb5b33e90b8d5fb69073a";
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
