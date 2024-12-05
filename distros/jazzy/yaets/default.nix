
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-yaets";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/yaets-release/archive/release/jazzy/yaets/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "0f14e390cd9d34efc7df693665ad8fce66cf2f8f074ea3dda1d3b0d7a4ef1123";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];

  meta = {
    description = "This package provides a execution tracing library.";
    license = with lib.licenses; [ asl20 ];
  };
}
