
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-rolling-microstrain-inertial-description";
  version = "4.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/rolling/microstrain_inertial_description/4.7.0-1.tar.gz";
    name = "4.7.0-1.tar.gz";
    sha256 = "8ac0d20798ddcfbf132d2d5407cf7561e8d802d0bf86fb3ea1c115f3cebf9518";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and stl files for MicroStrain sensors.";
    license = with lib.licenses; [ mit ];
  };
}
