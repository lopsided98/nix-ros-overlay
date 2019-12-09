
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf-test, talos-description-calibration, talos-description-inertial, catkin, rostest }:
buildRosPackage {
  pname = "ros-kinetic-talos-description";
  version = "1.0.45-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/kinetic/talos_description/1.0.45-1.tar.gz";
    name = "1.0.45-1.tar.gz";
    sha256 = "fdfaddb31d4eea0d5c7c360324cbdb9ebb7299654f4987126aba51d1dea30653";
  };

  buildType = "catkin";
  checkInputs = [ urdf-test rostest ];
  propagatedBuildInputs = [ talos-description-inertial talos-description-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The talos_description package'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
