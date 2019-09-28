
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-ros, launch-testing, ament-cmake-gtest, launch, nav2-common, navigation2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-bringup";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_bringup/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "cf0783e8cf61d5896a415b1ee68a9371581d75a02d9a2954f828103547d421fd";
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
