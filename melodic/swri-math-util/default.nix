
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-math-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_math_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "cb233f33e44084a7a0258a70cc3914ced1546ae380c49132cde6cb7f02527d43";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_math_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
