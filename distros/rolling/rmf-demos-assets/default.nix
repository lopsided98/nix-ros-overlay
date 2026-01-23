
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-assets";
  version = "2.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_assets/2.8.1-2.tar.gz";
    name = "2.8.1-2.tar.gz";
    sha256 = "dd1729a130aa179f0fa30ba2842b051e5aa8d8416eaef191713dff0d52f117aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Models and other media used for RMF demos";
    license = with lib.licenses; [ asl20 ];
  };
}
