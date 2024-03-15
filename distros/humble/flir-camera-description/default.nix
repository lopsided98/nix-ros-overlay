
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-flir-camera-description";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/flir_camera_description/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "d460f83d18379c3c7df34bd969a6525df92cf87d5a752f298acf44dd56fd282b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''FLIR camera Description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
