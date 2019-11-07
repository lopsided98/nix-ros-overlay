
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-base, catkin, husky-bringup }:
buildRosPackage {
  pname = "ros-melodic-husky-robot";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_robot/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "01a169c35acc692f79802efb5f66cbac9f11ca9e0e653fbde85a92242b81eb0f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
