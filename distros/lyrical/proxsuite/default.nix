
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-proxsuite";
  version = "0.6.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/lyrical/proxsuite/0.6.5-3.tar.gz";
    name = "0.6.5-3.tar.gz";
    sha256 = "4798c8476ff47068dcc0739a9f38e6779246864b748f428c3f669169a10d6194";
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
