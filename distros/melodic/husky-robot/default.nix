
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-bringup }:
buildRosPackage {
  pname = "ros-melodic-husky-robot";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_robot/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "63dd260f50a32ae88bde89cd67830aa913a333b445b0650d8eb0b70269050928";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
