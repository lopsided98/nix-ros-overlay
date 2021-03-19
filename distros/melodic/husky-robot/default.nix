
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-bringup }:
buildRosPackage {
  pname = "ros-melodic-husky-robot";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_robot/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "1793354b506e8066206a07214cbc9f9d19dfff1f7de0a339bd7461196cbf7199";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
