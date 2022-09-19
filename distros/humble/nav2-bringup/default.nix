
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, nav2-common, navigation2, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-nav2-bringup";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_bringup/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "5a46a308b2beb2a1c9038fb1433107a1b421b9b586dc779ad0d7952e6a57381e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ launch-ros nav2-common navigation2 slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the Nav2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
