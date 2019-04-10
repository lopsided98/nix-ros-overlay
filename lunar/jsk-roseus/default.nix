
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, catkin, euslisp, geneus }:
buildRosPackage {
  pname = "ros-lunar-jsk-roseus";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_roseus-release/archive/release/lunar/jsk_roseus/1.7.4-0.tar.gz;
    sha256 = "079608188dbb8d6d55bb38fab9b1a5c8b53d38d1bf1ac745292076f22f0faa3a";
  };

  propagatedBuildInputs = [ roseus euslisp geneus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains roseus package for jsk-ros-pkg</p>'';
    #license = lib.licenses.BSD;
  };
}
