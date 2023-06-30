
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk }:
buildRosPackage {
  pname = "ros-noetic-lpg-planner";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/lpg_planner/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "29427556bb284892013b61603fbef119b214805f5d39f376939e01a89326c6b8";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
