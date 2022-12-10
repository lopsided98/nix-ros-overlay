
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, git, orocos-kdl }:
buildRosPackage {
  pname = "ros-rolling-orocos-kdl-vendor";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/rolling/orocos_kdl_vendor/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "4178b8ed4a1b3cebb10bcab80880d27a3a137e931ba6927f1cfea125415f300a";
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
