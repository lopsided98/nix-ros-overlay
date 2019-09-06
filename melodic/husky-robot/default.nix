
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-base, catkin, husky-bringup }:
buildRosPackage {
  pname = "ros-melodic-husky-robot";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_robot/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "59397d25ee22b8f1a8795bf849cbe12d4d7ab6d2ffc294b21ec6442fc8e0852e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
