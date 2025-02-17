
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-rmf-demos-assets";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/jazzy/rmf_demos_assets/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "0563367e5f03103564d5355cb624062fa59eeeed808673e22ca2c5373bc4f7f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Models and other media used for RMF demos";
    license = with lib.licenses; [ asl20 ];
  };
}
