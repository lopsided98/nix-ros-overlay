
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-iron-mimick-vendor";
  version = "0.3.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/iron/mimick_vendor/0.3.2-5.tar.gz";
    name = "0.3.2-5.tar.gz";
    sha256 = "17f011a5846a9fdcafc36a929cd1ebaf93c5486441fba9b327de2a7814ed2b47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Wrapper around mimick, it provides an ExternalProject build of mimick.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
