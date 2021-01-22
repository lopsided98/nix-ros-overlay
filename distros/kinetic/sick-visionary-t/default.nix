
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sick-visionary-t-driver }:
buildRosPackage {
  pname = "ros-kinetic-sick-visionary-t";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_visionary_t-release/archive/release/kinetic/sick_visionary_t/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "42fd4384a85fdd640e18660549f37a6a2515735affbf52c79d3f681712a5a523";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sick-visionary-t-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Open source driver for the SICK Visionary-T 3D TOF camera.'';
    license = with lib.licenses; [ asl20 ];
  };
}
