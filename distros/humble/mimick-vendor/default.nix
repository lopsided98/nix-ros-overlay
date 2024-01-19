
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-humble-mimick-vendor";
  version = "0.2.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/humble/mimick_vendor/0.2.8-2.tar.gz";
    name = "0.2.8-2.tar.gz";
    sha256 = "e0158915d5577742060cd50071180827639d8b7bdf7caa2aaa78b5c4e59cc568";
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
