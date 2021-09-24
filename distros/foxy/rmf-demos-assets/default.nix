
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-rmf-demos-assets";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/foxy/rmf_demos_assets/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "e4d053ae69a2efbdee40b7e538bf7569c52f91e7f2a1080343560c6e0ad4302f";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Models and other media used for RMF demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
