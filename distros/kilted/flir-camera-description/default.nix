
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kilted-flir-camera-description";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/kilted/flir_camera_description/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "edec58944fe6e3248e2bfe3251481260c9030faadc022ac541bb9a923fc26e83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "FLIR camera Description package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
