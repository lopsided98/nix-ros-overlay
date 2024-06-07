
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-proxsuite";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/jazzy/proxsuite/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "d6264a502aa27f33537de2e7ebfdcff5180209d794fe12cd6cba2ff3da8cf1a8";
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
