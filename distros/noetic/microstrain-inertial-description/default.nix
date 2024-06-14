
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-description";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_description/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "6c49d933c31877b0bb56099f19a5946ee9eb7c5663bbe66f649a21c692d89581";
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
