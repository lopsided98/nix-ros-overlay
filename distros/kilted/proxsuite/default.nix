
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-proxsuite";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/kilted/proxsuite/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "72d85ce655617630717856f23f0605ced47c3676fe4f3e14983acaeb3cf48b22";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  checkInputs = [ matio ];
  propagatedBuildInputs = [ eigen python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Advanced Proximal Optimization Toolbox";
    license = with lib.licenses; [ bsd2 ];
  };
}
