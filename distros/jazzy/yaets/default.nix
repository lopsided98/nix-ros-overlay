
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-yaets";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/yaets-release/archive/release/jazzy/yaets/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "765cc4a3e3a3be135a45c2189d626d303d299661f472544881d9546b4af77c8f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.matplotlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides a execution tracing library.";
    license = with lib.licenses; [ asl20 ];
  };
}
