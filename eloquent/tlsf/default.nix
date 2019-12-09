
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-tlsf";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/eloquent/tlsf/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "f6002ba8f30b8809ff6667c141709b8338c190a100f5b4b45bdbd6eb59358c94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TLSF allocator version 2.4.6'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
