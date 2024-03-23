
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-package }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-gen-version-h";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_gen_version_h/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "d7dd19094f5c123f55058bd4365bd9d32d7cf8fc317d697eb27553ab3379c8b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-package ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-package ];

  meta = {
    description = "Generate a C header containing the version number of the package";
    license = with lib.licenses; [ asl20 ];
  };
}
