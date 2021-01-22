
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp, geneus, roseus }:
buildRosPackage {
  pname = "ros-kinetic-jsk-roseus";
  version = "1.7.4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/jsk_roseus/1.7.4-0.tar.gz";
    name = "1.7.4-0.tar.gz";
    sha256 = "1eb21f949cde7dc400b31d4485dddbafac2b977689ce603f4e490ca527c37f53";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ euslisp geneus roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains roseus package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
