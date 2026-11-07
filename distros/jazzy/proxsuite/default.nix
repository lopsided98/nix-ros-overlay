
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libcereal-dev, catch2, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules, matio, python3, python3Packages, simde }:
buildRosPackage {
  pname = "ros-jazzy-proxsuite";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/jazzy/proxsuite/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "98fa08191d78246a7f192431be7182b1bec0f859d9cbdd9bb01ee368e52021a9";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git graphviz jrl-cmakemodules python3 ];
  checkInputs = [ catch2 matio ];
  propagatedBuildInputs = [ _unresolved_libcereal-dev eigen python3Packages.nanobind python3Packages.numpy python3Packages.scipy simde ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Advanced Proximal Optimization Toolbox";
    license = with lib.licenses; [ bsd2 ];
  };
}
