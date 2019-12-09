
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, autoware-auto-msgs, ament-lint-common, ament-cmake, autoware-auto-helper-functions, autoware-auto-cmake, ament-cmake-gtest, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-geometry";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_geometry/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "f72c785646e0816a10368d23cb7eb74d2dbae4b5785d2a4a4ad5394044e92bb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-auto-msgs autoware-auto-helper-functions geometry-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ autoware-auto-msgs autoware-auto-helper-functions geometry-msgs ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''Geometry related algorithms'';
    license = with lib.licenses; [ asl20 ];
  };
}
