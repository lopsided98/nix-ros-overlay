
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, git, orocos-kdl }:
buildRosPackage {
  pname = "ros-humble-orocos-kdl-vendor";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/humble/orocos_kdl_vendor/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "b6f80dd7f0b4e02e878b171c1316b74676d3f6a3be9366c448ad9ba87e81d86f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module orocos-kdl ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Wrapper around orocos_kdl, providing nothing but a dependency on orocos_kdl on some systems.
    On others, it fetches and builds orocos_kdl locally.'';
    license = with lib.licenses; [ asl20 "LGPL-2.1-or-later" ];
  };
}
