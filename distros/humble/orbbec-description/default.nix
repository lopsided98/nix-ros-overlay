
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-orbbec-description";
  version = "2.6.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/humble/orbbec_description/2.6.3-2.tar.gz";
    name = "2.6.3-2.tar.gz";
    sha256 = "0360ff5b8b41e65f2634ce78a70ace0135f92751748104960ebd8ef2f533b3ea";
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
