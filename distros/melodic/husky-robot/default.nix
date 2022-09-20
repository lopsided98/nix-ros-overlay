
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-bringup }:
buildRosPackage {
  pname = "ros-melodic-husky-robot";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_robot/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "cdf96a1bacd675ad790c0a14e3ac121e208a721c298e3da351604b8ba207f9fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
