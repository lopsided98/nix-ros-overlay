
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kilted-flir-camera-description";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/kilted/flir_camera_description/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "97b1924261b538da668fe88256c9ff17518e1aa5ee5df55f2461fe609ab78dc4";
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
