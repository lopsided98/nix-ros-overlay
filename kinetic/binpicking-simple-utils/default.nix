
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-binpicking-simple-utils";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/durovsky/binpicking_utils-release/archive/release/kinetic/binpicking_simple_utils/0.1.4-0.tar.gz;
    sha256 = "d1375bd5f7379048fb2c3a67729e4dfe43fb280c6f6744ec0ec4d87065f1a118";
  };

  propagatedBuildInputs = [ tf roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin tf roscpp geometry-msgs ];

  meta = {
    description = ''<p>
      Various binpicking utils
    </p>'';
    #license = lib.licenses.BSD;
  };
}
