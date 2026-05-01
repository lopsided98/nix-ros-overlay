
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-tlsf";
  version = "0.11.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/lyrical/tlsf/0.11.1-3.tar.gz";
    name = "0.11.1-3.tar.gz";
    sha256 = "51bf4648664984322a73b5f85eaff90d25344819984c25a5b4069d0a414bd36e";
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
