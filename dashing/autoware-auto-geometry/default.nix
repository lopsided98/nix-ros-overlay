
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-pclint, ament-cmake-gtest, autoware-auto-msgs, autoware-auto-cmake, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-geometry";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_geometry/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "a32102f4f825a4d4fc17adf794f579e1c17f074a08ee6cc0933b5653be73b090";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-auto-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ament-lint-common ament-cmake-pclint ];
  propagatedBuildInputs = [ autoware-auto-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Geometry related algorithms'';
    license = with lib.licenses; [ asl20 ];
  };
}
