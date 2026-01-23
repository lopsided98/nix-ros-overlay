
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-orbbec-description";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v2-release/archive/release/humble/orbbec_description/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "5f227100c526ce73507bd232095d00540de92fa704a64f8e8a3dc6a2f15a3991";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO: Package description";
    license = with lib.licenses; [ asl20 ];
  };
}
