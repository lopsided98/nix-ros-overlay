
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, python-cmake-module }:
buildRosPackage {
  pname = "ros-kilted-yaets";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/yaets-release/archive/release/kilted/yaets/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "e88d61f3f9ce85593d5ca5f2f42a1ec547e3cbd73c1638b4e4145baab445d045";
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
