
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-tlsf";
  version = "0.9.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/jazzy/tlsf/0.9.1-2.tar.gz";
    name = "0.9.1-2.tar.gz";
    sha256 = "cf851acad5b8fe0e80d40df4ecd3a70b13c8c5816c1e165203bee7638d803aff";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TLSF allocator version 2.4.6";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
