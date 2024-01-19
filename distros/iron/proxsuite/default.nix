
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages }:
buildRosPackage {
  pname = "ros-iron-proxsuite";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/iron/proxsuite/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "4df9094cf47e7927d431c87767fcbf17faef0a9e09a3e317a9de9fc0a6c08de3";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  checkInputs = [ matio ];
  propagatedBuildInputs = [ eigen python3Packages.numpy python3Packages.scipy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The Advanced Proximal Optimization Toolbox'';
    license = with lib.licenses; [ bsd2 ];
  };
}
