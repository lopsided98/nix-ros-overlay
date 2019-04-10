
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-lunar-kni";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/kni/1.1.2-0.tar.gz;
    sha256 = "f121ace6391d8c993c39817db69061f4ba2a824fd41b5b3b7101ce9840987465";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the third-party KNI (Katana Native Interface) library for Katana
     robot arms.

     Instead of using the KNI library directly, the <a href="/wiki/katana">katana</a>
     package should be used for communication with the Katana arm.'';
    #license = lib.licenses.GPL;
  };
}
