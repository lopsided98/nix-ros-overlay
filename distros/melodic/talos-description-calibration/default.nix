
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-talos-description-calibration";
  version = "1.0.45";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/melodic/talos_description_calibration/1.0.45-0.tar.gz";
    name = "1.0.45-0.tar.gz";
    sha256 = "d5e6dc7ae7fcb932718a916c9be6c892b135ff83c5be3795c87cd4b9412f72e0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description of the hand-eye calibration of the TALOS robot.  The files in this package are used also from the talos_description package.'';
    license = with lib.licenses; [ "CC-BY-NC-ND-3.0" ];
  };
}
