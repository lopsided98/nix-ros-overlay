
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smacc2, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cl-keyboard";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_keyboard/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "2837ab673010f0cbcf663ea3b5eac5cededf12b4995269b4eb2042fbdcffd16f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smacc2 std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The cl_keyboard package";
    license = with lib.licenses; [ asl20 ];
  };
}
