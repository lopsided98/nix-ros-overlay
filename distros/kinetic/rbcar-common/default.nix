
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rbcar-description, rbcar-pad }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-common";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_common-release/archive/release/kinetic/rbcar_common/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "b4b1ac70711b45e9dbe45942ec245578d80e9ca7884165a99250ffa5e26b80d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rbcar-description rbcar-pad ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_common package. It contains RBCAR common packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
