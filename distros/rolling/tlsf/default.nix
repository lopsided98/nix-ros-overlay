
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-tlsf";
  version = "0.11.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/rolling/tlsf/0.11.1-2.tar.gz";
    name = "0.11.1-2.tar.gz";
    sha256 = "3f26f11b7f58ee107f8ea51087f365d0e48c596fc5da18c941d0ee05875b9cdf";
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
