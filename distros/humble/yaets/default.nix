
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, python3Packages }:
buildRosPackage {
  pname = "ros-humble-yaets";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/yaets-release/archive/release/humble/yaets/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "6b14823d6516e4e40af1deeed3373a958e0a6cde51cf4503efe546667482d231";
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
