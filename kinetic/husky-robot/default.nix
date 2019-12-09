
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-bringup }:
buildRosPackage {
  pname = "ros-kinetic-husky-robot";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_robot/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "824b3d8a2a74e382332d58f861dc4e9d209d0016d40b9c1ae75eca2ac562dfb5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
