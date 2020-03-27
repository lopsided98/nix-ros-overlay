
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-math-util";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_math_util/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "d064b0a113a9b272e35892cb5d6ccc667b442343158850cefd717921accd6ee1";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_math_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
