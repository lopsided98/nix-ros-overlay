
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-melodic-swri-serial-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_serial_util/2.8.0-0.tar.gz;
    sha256 = "e57ee6c62599e33b6690b2bb2869d82769cc69b24194955243562baa00f6f38b";
  };

  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin boost ];

  meta = {
    description = ''swri_serial_util'';
    #license = lib.licenses.BSD;
  };
}
