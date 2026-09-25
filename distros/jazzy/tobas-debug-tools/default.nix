
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dsp, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-debug-tools";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_debug_tools/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "ee5cad62a58764a157166d487507b91c6a9f483109cf7a2f9361cf39da1e8168";
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
