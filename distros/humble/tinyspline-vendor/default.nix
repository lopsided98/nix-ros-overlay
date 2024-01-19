
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-humble-tinyspline-vendor";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyspline_vendor-release/archive/release/humble/tinyspline_vendor/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "bc2a7f465375b07f24a7ff2fbd76e95fd488c91de20956a927b918f5820f0b93";
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
