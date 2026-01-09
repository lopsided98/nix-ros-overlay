
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, urdf-tutorial }:
buildRosPackage {
  pname = "ros-jazzy-bcr-arm-description";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/jazzy/bcr_arm_description/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "8b981276ed7b642e673273b976024c9e3e47fd480b3c76024463a3dbd8a8b01b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdf-tutorial ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "robot description files including urdf, meshes and launch files for the bcr arm";
    license = with lib.licenses; [ asl20 ];
  };
}
