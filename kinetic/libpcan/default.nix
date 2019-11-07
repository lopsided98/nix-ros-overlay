
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-libpcan";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libpcan/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "5cab3417180857eabe39fb28165f50f677e3b1e5cc66dfa801244528953141c5";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libpcan to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
