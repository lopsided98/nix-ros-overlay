
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-kni";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/kni/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "728d84330cb0fa9a45a0b62a2aacb3903bbc26bff35cd0baf0e8c3b66bc77a01";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides the third-party KNI (Katana Native Interface) library for Katana
     robot arms.

     Instead of using the KNI library directly, the <a href="/wiki/katana">katana</a>
     package should be used for communication with the Katana arm.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
