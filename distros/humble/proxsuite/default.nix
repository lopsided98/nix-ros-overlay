
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, doxygen, eigen, git, matio, python3Packages, simde }:
buildRosPackage {
  pname = "ros-humble-proxsuite";
  version = "0.3.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/humble/proxsuite/0.3.6-2.tar.gz";
    name = "0.3.6-2.tar.gz";
    sha256 = "849c8e47914f68dec90a55bf5b085e6c6945bcae0b771097e444ab635e284796";
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
