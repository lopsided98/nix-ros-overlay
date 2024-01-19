
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-tlsf";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/humble/tlsf/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "5529e9e5b73a5800f4ec58d218f1d6c336f33ad153f258f9b379fbd44e28c6e0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TLSF allocator version 2.4.6'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
