
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, urdf-test, talos-description-calibration, talos-description-inertial }:
buildRosPackage {
  pname = "ros-melodic-talos-description";
  version = "1.0.45";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/melodic/talos_description/1.0.45-0.tar.gz";
    name = "1.0.45-0.tar.gz";
    sha256 = "a50d729ebe08f18e3cf29dc44d284453434e04c9dc2b41be74bf5e7ec79832c0";
  };

  buildType = "catkin";
  checkInputs = [ rostest urdf-test ];
  propagatedBuildInputs = [ talos-description-inertial talos-description-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The talos_description package'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
