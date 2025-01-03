
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp, rostest, subversion }:
buildRosPackage {
  pname = "ros-noetic-eus-qpoases";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_qpoases/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "a2bf96571aa5e7dd969c8b782872cc152367fb5f215248421470d3ede1c1eb26";
  };

  buildType = "catkin";
  buildInputs = [ catkin subversion ];
  propagatedBuildInputs = [ euslisp rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "eus_qpoases";
    license = with lib.licenses; [ asl20 ];
  };
}
