
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-tlsf";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/rolling/tlsf/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "25da1baedf1c7d7f6af25125aee65414d292ce26478fd91a1f588dc1357c51af";
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
