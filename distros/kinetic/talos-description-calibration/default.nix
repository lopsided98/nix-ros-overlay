
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-talos-description-calibration";
  version = "1.0.45-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/kinetic/talos_description_calibration/1.0.45-1.tar.gz";
    name = "1.0.45-1.tar.gz";
    sha256 = "47d4656aea8b106044c5a32dfb02c7784c06e54b3c9bf0954f7c78a49ec7ac8a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description of the hand-eye calibration of the TALOS robot.  The files in this package are used also from the talos_description package.'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
