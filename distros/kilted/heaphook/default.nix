
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-kilted-heaphook";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/kilted/heaphook/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "8bf5253453ba8c7550a8ca6207c66816c26579cac7e76ee0e124b6a3761b05c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tlsf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Replace all the dynamic heap allocation functions by LD_PRELOAD";
    license = with lib.licenses; [ asl20 ];
  };
}
