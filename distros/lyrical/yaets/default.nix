
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-yaets";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/yaets-release/archive/release/lyrical/yaets/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d659af6ea193c689d6bc84a8800e48109f5bbfff9c9415ab3b0761e268cf0ff6";
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
