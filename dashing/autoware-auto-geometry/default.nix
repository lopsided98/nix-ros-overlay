
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, autoware-auto-helper-functions, autoware-auto-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-geometry";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_geometry/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "f72c785646e0816a10368d23cb7eb74d2dbae4b5785d2a4a4ad5394044e92bb9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-auto-helper-functions autoware-auto-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''Geometry related algorithms'';
    license = with lib.licenses; [ asl20 ];
  };
}
