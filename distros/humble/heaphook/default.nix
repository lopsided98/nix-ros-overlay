
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-humble-heaphook";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/humble/heaphook/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "9cccc9a29dc13904c5c12b1c27fca677685fa6c9c4ebfed4da5a3a55aa7251e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Replace all the dynamic heap allocation functions by LD_PRELOAD'';
    license = with lib.licenses; [ asl20 ];
  };
}
