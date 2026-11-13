
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cereal, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules, matio, ros-environment, simde }:
buildRosPackage {
  pname = "ros-humble-proxsuite";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/humble/proxsuite/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "c108a8e952176a8980503a06c4448f015659e17d5c7e92e1a6209497eab4c845";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git graphviz jrl-cmakemodules ros-environment ];
  checkInputs = [ catch2 matio ];
  propagatedBuildInputs = [ cereal eigen simde ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Advanced Proximal Optimization Toolbox";
    license = with lib.licenses; [ bsd2 ];
  };
}
