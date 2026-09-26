
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-debug-tools";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_debug_tools/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "e75073ac2cc3414603d31d32f469e9cdd2b388eb6c3a7c5a7d0f9e7fb8d3a40f";
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
