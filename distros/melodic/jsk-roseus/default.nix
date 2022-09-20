
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp, geneus, roseus }:
buildRosPackage {
  pname = "ros-melodic-jsk-roseus";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/jsk_roseus/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "38497ef160c3e76b0602f2ddf41bb50ce54e8063de8a6ed3bce0984af02c1b09";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ euslisp geneus roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains roseus package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
