
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2, smacc2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cl-generic-sensor";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_generic_sensor/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "3a777248151dd74ececf9dd98e7e78ecc8e63ac9e8cc984b086c183885f70e61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 smacc2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The cl_generic_sensor package";
    license = with lib.licenses; [ asl20 ];
  };
}
