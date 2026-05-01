
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tlsf }:
buildRosPackage {
  pname = "ros-lyrical-heaphook";
  version = "0.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/heaphook-release/archive/release/lyrical/heaphook/0.1.1-4.tar.gz";
    name = "0.1.1-4.tar.gz";
    sha256 = "c0c860463a7502ce40a62f66c918d482753c155ce535624181c17cb7e5a08abc";
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
