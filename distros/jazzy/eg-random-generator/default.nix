
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-eg-random-generator";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/eg_random_generator/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "3a59f0cd4df4d30aa995a5e6a8c6c85861b2b88ac5df32ae4e52ffdea712bc52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The eg_random_generator package";
    license = with lib.licenses; [ asl20 ];
  };
}
