
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-description";
  version = "2.9.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/jazzy/orbbec_description/2.9.3-2.tar.gz";
    name = "2.9.3-2.tar.gz";
    sha256 = "f40d347cce79961d6fff92774935accacfa150d65af2fdbe42cc6559ca82a16a";
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
