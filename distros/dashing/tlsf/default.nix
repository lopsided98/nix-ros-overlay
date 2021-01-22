
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-tlsf";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/dashing/tlsf/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "d646f2ef2aef21d079115f890d63c61313d3812f82e84a2d3678377e42aadb7e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TLSF allocator version 2.4.6'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
