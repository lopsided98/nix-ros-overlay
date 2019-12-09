
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-cpplint, ament-lint-common, ament-lint-auto, ament-cmake-uncrustify, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-cmake";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_cmake/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "638a7fb6015d0c38ebdae7b10ef4ccbf577be8874789d2fe31f24ab71e2f94f9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-core ament-cmake-cppcheck ament-cmake-copyright ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''Import the compiler settings defined for Autoware.Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
