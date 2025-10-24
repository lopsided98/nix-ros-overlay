
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-kilted-microstrain-inertial-description";
  version = "4.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/kilted/microstrain_inertial_description/4.8.0-1.tar.gz";
    name = "4.8.0-1.tar.gz";
    sha256 = "0b00929c90806b389697a8fdffc97389b725365c5a7d2b3c62d6453c9de6a31c";
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
