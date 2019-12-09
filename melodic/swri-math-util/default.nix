
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-math-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_math_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "eff636e1767c4f5e6e8455a6eabaddd7fa088c107d96060c2419448b1184ba86";
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
