
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-iron-heaphook";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/iron/heaphook/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1f4918f9d803840995e80d07f9c6d80f96e05a86c8b7512421204b3734d991e9";
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
