
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch, launch-testing, launch-ros, navigation2, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, ament-cmake-pytest, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-bringup";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_bringup/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "66b1e1f2fa567dc199c47dc31ef4c7167dd9c298bcb4758840e18a8a4b63ff2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ navigation2 launch-ros nav2-common ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ launch-ros navigation2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
