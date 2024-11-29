
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-assets";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_assets/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "970a7d72b48164fb441b5ab51ed70ff1a37aaa776c198e0570f500cf1821dd10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Models and other media used for RMF demos";
    license = with lib.licenses; [ asl20 ];
  };
}
