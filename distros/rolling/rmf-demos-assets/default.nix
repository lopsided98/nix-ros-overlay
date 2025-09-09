
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-assets";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_assets/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "bad788e1eb346f3d94f49577db7d15fbec1d539c8ac92b6e3d55af2d1ce98d1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Models and other media used for RMF demos";
    license = with lib.licenses; [ asl20 ];
  };
}
