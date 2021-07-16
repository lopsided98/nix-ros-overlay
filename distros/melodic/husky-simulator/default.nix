
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-gazebo }:
buildRosPackage {
  pname = "ros-melodic-husky-simulator";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_simulator/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "34f4590997ab7a51c29e2f09dcaa27a08799eec6e0df288f45346277cadbbc1a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
