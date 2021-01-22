
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-libyaml-vendor";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libyaml_vendor-release/archive/release/foxy/libyaml_vendor/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "2d9d6e4a32ac17bf0617218b0caecf892a837cfb23835a55a072e13363e48bf0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around libyaml, provides the last version (1.8.0 rc) that ships with a CMake module'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
