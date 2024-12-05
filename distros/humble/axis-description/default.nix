
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-axis-description";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/axis_camera-release/archive/release/humble/axis_description/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "42adb697735b30ea2c3695e09d9aec3f4689fab9c5c61575617fccfa22637bf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description package with URDF files for common Axis fixed and PTZ cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
