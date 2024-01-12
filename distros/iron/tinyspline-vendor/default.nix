
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-iron-tinyspline-vendor";
  version = "0.6.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyspline_vendor-release/archive/release/iron/tinyspline_vendor/0.6.0-4.tar.gz";
    name = "0.6.0-4.tar.gz";
    sha256 = "17cd754426c4e18a8cc13cca26dd77ba869805438624bf35f209519a6001058f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''The vendor package for tinyspline.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
