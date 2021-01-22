
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-auto-docking, kobuki-bumper2pc, kobuki-capabilities, kobuki-controller-tutorial, kobuki-description, kobuki-keyop, kobuki-node, kobuki-random-walker, kobuki-rapps, kobuki-safety-controller, kobuki-testsuite }:
buildRosPackage {
  pname = "ros-kinetic-kobuki";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "975059408990025af523d30ae626d067b890731123ba844b973e1946e91262b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-auto-docking kobuki-bumper2pc kobuki-capabilities kobuki-controller-tutorial kobuki-description kobuki-keyop kobuki-node kobuki-random-walker kobuki-rapps kobuki-safety-controller kobuki-testsuite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software for Kobuki, Yujin Robot's mobile research base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
