
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-assets";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_assets/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "4631c037e5d60102a6359a2505f03125ef3dd77b147250569b4afbe93e126042";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Models and other media used for RMF demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
