
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rocon-semantic-version";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_semantic_version/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "ede22535e402aab843576c2189701ec11878f469e61d6f1055d6822779d2f4c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Internal packaging of the 2.2.2 version of the python semantic version module.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
