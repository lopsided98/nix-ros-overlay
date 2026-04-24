
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-assets";
  version = "2.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_assets/2.8.2-2.tar.gz";
    name = "2.8.2-2.tar.gz";
    sha256 = "e7de0e795394a1fe535297dc9edfeb3e455b74f95d87f1a198c9e56716de56b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Models and other media used for RMF demos";
    license = with lib.licenses; [ asl20 ];
  };
}
