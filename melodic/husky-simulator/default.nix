
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-gazebo, catkin }:
buildRosPackage {
  pname = "ros-melodic-husky-simulator";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_simulator/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "9f73115dee3431c7262dcc6921ba8d83d42a240c777095d9e7f2605845b7b05a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
