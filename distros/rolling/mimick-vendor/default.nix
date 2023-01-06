
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-mimick-vendor";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/rolling/mimick_vendor/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "cee31e9fe55575ca74c7ff1e156c070665b247baa5b730d212214df6b88758a7";
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
