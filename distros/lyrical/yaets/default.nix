
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, python-cmake-module }:
buildRosPackage {
  pname = "ros-lyrical-yaets";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/yaets-release/archive/release/lyrical/yaets/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "24b66419aab56447bbb0c3d0d920be68ad0c9a03c855ca644f90211a61efa0b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ python-cmake-module ];

  meta = {
    description = "This package provides a execution tracing library.";
    license = with lib.licenses; [ asl20 ];
  };
}
