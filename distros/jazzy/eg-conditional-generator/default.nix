
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-eg-conditional-generator";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/eg_conditional_generator/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "d08fa238ec64067c273230387f875eec13385506156fd0eda289489999038874";
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
