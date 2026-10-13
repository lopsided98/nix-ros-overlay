
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-yaets";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/yaets-release/archive/release/kilted/yaets/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "3787b2f3759749771db72599f6d09ad7ad980aa8e6fed07f0c40e108be9002f2";
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
