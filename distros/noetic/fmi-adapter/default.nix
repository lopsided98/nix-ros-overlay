
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-fmi-adapter";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter-release/archive/release/noetic/fmi_adapter/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "ff52416ed151e432b74cbc291300e602eae309d09c5e3b8a73484c4c1b5a4295";
  };

  buildType = "catkin";
  buildInputs = [ git ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps FMUs for co-simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
