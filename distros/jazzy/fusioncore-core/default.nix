
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-core";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_core/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "e720c351fb8aaa83e8e70d18cdb4248676f50bd4fbff4c34cf3573938902a6cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "FusionCore pure C++ sensor fusion library. No ROS dependency.";
    license = with lib.licenses; [ asl20 ];
  };
}
