
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, subversion, euslisp }:
buildRosPackage {
  pname = "ros-kinetic-eus-qpoases";
  version = "0.1.14";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_control-release/archive/release/kinetic/eus_qpoases/0.1.14-0.tar.gz;
    sha256 = "44e08b2b25f83155361557905ed18ec6f898a22c4aa7b964547f34630866fafa";
  };

  buildInputs = [ rostest subversion euslisp ];
  propagatedBuildInputs = [ rostest euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_qpoases'';
    #license = lib.licenses.Apache License 2.0;
  };
}
