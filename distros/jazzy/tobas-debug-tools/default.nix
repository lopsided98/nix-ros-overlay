
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-debug-tools";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_debug_tools/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "273bfb744c70f3788598de3c1782c5e6014a56c23009ca39de892306b991e5b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dsp tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing simple nodes for debugging.
		Topics published by nodes in this package are used only for verification.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
