
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rmf-building-map-tools, ros2run }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-maps";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_maps/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "ecfec78eb84df0072f7190f75fdfca7b2b068ad4a4b0bb1e461154baeca04ab6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rmf-building-map-tools ros2run ];
  nativeBuildInputs = [ ament-cmake rmf-building-map-tools ros2run ];

  meta = {
    description = ''A package containing demo maps for rmf'';
    license = with lib.licenses; [ asl20 ];
  };
}
