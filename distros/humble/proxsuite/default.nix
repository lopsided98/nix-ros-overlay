
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libcereal-dev, catch2, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules, matio, python3, python3Packages, simde }:
buildRosPackage {
  pname = "ros-humble-proxsuite";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/humble/proxsuite/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "8a0070881d23e407b07f50fa88323592c321f7ac10a523265a0bca10778c80d7";
  };

  buildType = "cmake";
  buildInputs = [ _unresolved_libcereal-dev cmake doxygen git graphviz jrl-cmakemodules python3 ];
  checkInputs = [ catch2 matio ];
  propagatedBuildInputs = [ eigen python3Packages.numpy python3Packages.scipy simde ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Advanced Proximal Optimization Toolbox";
    license = with lib.licenses; [ bsd2 ];
  };
}
