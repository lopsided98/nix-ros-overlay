
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, catkin, euslisp, geneus }:
buildRosPackage {
  pname = "ros-melodic-jsk-roseus";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/jsk_roseus/1.7.4-0.tar.gz;
    sha256 = "c72f89169571ed31e8051108300d8c87d656c9f72df5d91e96bd8ec808c796a4";
  };

  propagatedBuildInputs = [ roseus euslisp geneus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains roseus package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
