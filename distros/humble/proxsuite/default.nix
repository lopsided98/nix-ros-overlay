
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libcereal-dev, catch2, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules, matio, simde }:
buildRosPackage {
  pname = "ros-humble-proxsuite";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/humble/proxsuite/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "da6ee5657205e187a6f2ebfd5a5d8c247b22bbc5c72a4031bb2dfe04d93a06d2";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git graphviz jrl-cmakemodules ];
  checkInputs = [ catch2 matio ];
  propagatedBuildInputs = [ _unresolved_libcereal-dev eigen simde ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Advanced Proximal Optimization Toolbox";
    license = with lib.licenses; [ bsd2 ];
  };
}
