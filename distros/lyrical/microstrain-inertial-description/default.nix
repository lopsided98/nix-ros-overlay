
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-lyrical-microstrain-inertial-description";
  version = "4.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/lyrical/microstrain_inertial_description/4.8.0-3.tar.gz";
    name = "4.8.0-3.tar.gz";
    sha256 = "a63e23b4e7fc3c387a8f063167427b2eaa1401ee86d019a3e03d887991122216";
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
