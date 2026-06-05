
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sr-conditional";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sr_conditional/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "7515a0d5c34eeffc23e4ce912faa7ea2d719dc1af3e5ed8cc06d0842fde7cc05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sr_conditional package";
    license = with lib.licenses; [ asl20 ];
  };
}
