
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp, rostest, subversion }:
buildRosPackage {
  pname = "ros-noetic-eus-qpoases";
  version = "0.1.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_qpoases/0.1.17-2.tar.gz";
    name = "0.1.17-2.tar.gz";
    sha256 = "9074d8f08a151e887ff70ffdd304c0c1077f0c694ac5c7cfdb8033eb07886d02";
  };

  buildType = "catkin";
  buildInputs = [ catkin subversion ];
  propagatedBuildInputs = [ euslisp rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_qpoases'';
    license = with lib.licenses; [ asl20 ];
  };
}
