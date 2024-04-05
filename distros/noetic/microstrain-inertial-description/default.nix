
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-description";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_description/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "0dae86c43cedd54e8b998960e8681e1408320ce73f59adc6b9339137ea50d9fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "URDF and stl files for MicroStrain sensors.";
    license = with lib.licenses; [ mit ];
  };
}
