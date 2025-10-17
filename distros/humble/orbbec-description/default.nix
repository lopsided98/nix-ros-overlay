
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-orbbec-description";
  version = "1.5.14-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v1-release/archive/release/humble/orbbec_description/1.5.14-1.tar.gz";
    name = "1.5.14-1.tar.gz";
    sha256 = "96ae323eeab98a518539b8b39cd42484c3867c0fcd3403bf32eefeefbc1646d4";
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
