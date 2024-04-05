
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-rolling-microstrain-inertial-description";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/rolling/microstrain_inertial_description/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "01933a92e8f374e7d8b8f4696ff5ee953d6cd0fa7a39c39367d872e6568f73e1";
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
