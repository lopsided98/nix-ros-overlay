
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, git, orocos-kdl }:
buildRosPackage {
  pname = "ros-iron-orocos-kdl-vendor";
  version = "0.3.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/iron/orocos_kdl_vendor/0.3.4-3.tar.gz";
    name = "0.3.4-3.tar.gz";
    sha256 = "7bc443f64d2f4f5233ae930d58b759ac9d30fbd95c1332e87592a326195039e3";
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
