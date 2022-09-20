
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-math-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_math_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "ea43a9d90e91fa64205a78903c4e40d0ccd8b2a356caa7c3013a1a0a95ac2534";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_math_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
