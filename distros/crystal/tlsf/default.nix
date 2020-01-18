
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-tlsf";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/crystal/tlsf/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "fb30080b58ef1610f857ff1ddcf1416325f24a247267e2c49f09a5759ab919a7";
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
