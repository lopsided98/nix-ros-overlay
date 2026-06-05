
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-cl-http";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_http/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "5b5256762ca53245175c694208c354df0c55be1a9c2b602f37e605db9260ff1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The cl_http package";
    license = with lib.licenses; [ asl20 ];
  };
}
