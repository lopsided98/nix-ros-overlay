
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-assets";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_assets/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "f7b04dd69323f83d041aef0777c3d33414ee177b598a841b48292660321f7799";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Models and other media used for RMF demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
