
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-rapps, kobuki-keyop, kobuki-random-walker, kobuki-capabilities, catkin, kobuki-bumper2pc, kobuki-node, kobuki-safety-controller, kobuki-controller-tutorial, kobuki-description, kobuki-auto-docking, kobuki-testsuite }:
buildRosPackage {
  pname = "ros-kinetic-kobuki";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "975059408990025af523d30ae626d067b890731123ba844b973e1946e91262b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-rapps kobuki-keyop kobuki-random-walker kobuki-auto-docking kobuki-capabilities kobuki-node kobuki-safety-controller kobuki-controller-tutorial kobuki-description kobuki-bumper2pc kobuki-testsuite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software for Kobuki, Yujin Robot's mobile research base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
