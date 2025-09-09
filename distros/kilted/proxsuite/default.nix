
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-proxsuite";
  version = "0.6.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/kilted/proxsuite/0.6.5-2.tar.gz";
    name = "0.6.5-2.tar.gz";
    sha256 = "bacadd51cfa1f1236facad64758a6532fabafebb631d827c44a7187263ca19cd";
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
