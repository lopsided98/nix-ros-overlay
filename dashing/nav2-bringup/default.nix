
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-ros, launch-testing, ament-cmake-gtest, launch, nav2-common, navigation2, ament-lint-auto }:
buildRosPackage rec {
  pname = "ros-dashing-nav2-bringup";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_bringup/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "c079d75ed164f0333b53d450e4297f603df6d9e13a3979c795c872c8851bbd8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ navigation2 launch-ros nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ navigation2 launch-ros nav2-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
