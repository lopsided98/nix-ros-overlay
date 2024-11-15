
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, nav2-common, navigation2, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-nav2-bringup";
  version = "1.1.17-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_bringup/1.1.17-1.tar.gz";
    name = "1.1.17-1.tar.gz";
    sha256 = "22c25c74ca6d5c5e078bda4c42afe7d85f1bdfbdf94eef9b6079baa3023f3d8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ launch-ros nav2-common navigation2 slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bringup scripts and configurations for the Nav2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
