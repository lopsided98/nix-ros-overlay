
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-description";
  version = "2.6.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/jazzy/orbbec_description/2.6.3-5.tar.gz";
    name = "2.6.3-5.tar.gz";
    sha256 = "986446644c42dd4df486d6711c482caa3f30a8deee56fefcd480534e6577f3df";
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
