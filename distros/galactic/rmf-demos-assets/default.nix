
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos-assets";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos_assets/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "bc83618e376ab8ab50ad1f6ac3300879b0b8e05dd395c7de9d53da5cb0d936fc";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Models and other media used for RMF demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
