
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-ros, launch-testing, ament-cmake-gtest, launch, nav2-common, navigation2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-bringup";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_bringup/0.1.7-0.tar.gz;
    sha256 = "66b1e1f2fa567dc199c47dc31ef4c7167dd9c298bcb4758840e18a8a4b63ff2f";
  };

  buildInputs = [ navigation2 launch-ros nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ launch-ros navigation2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
