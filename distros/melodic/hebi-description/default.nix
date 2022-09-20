
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf }:
buildRosPackage {
  pname = "ros-melodic-hebi-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/HebiRobotics/hebi_description-release/archive/release/melodic/hebi_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "a98ed8c034550c518fac9fe8eca1f14ae662278efcd5089abe07f90a4e6a4df0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS models for HEBI components'';
    license = with lib.licenses; [ mit ];
  };
}
