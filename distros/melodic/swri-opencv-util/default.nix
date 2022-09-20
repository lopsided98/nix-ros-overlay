
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-opencv-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_opencv_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "b7da72b8e33fead7ca82dc04db4145a7b8351d9a8e49660cd5b7f10235165e56";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
