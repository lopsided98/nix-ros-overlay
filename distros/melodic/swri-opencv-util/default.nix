
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-opencv-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_opencv_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "19c54acf412eab7cd015ba6eb9fc3eb993de07fabaf2ad78d7fe31f4f3fea698";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
