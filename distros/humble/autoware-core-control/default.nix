
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-simple-pure-pursuit }:
buildRosPackage {
  pname = "ros-humble-autoware-core-control";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_control/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "d274efa704c0e9bff088fd5acee6f501edb8ef0fd5cd58e5ad98e0d8c7660231";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-simple-pure-pursuit ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
