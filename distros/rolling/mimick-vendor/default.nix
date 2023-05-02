
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-mimick-vendor";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/rolling/mimick_vendor/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "fe5868a4af04deef658ebf2a4a5df3195c27542e4ab4e5c8b7d0fefdcdd67548";
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
