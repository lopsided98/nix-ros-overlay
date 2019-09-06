
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-gazebo, catkin }:
buildRosPackage {
  pname = "ros-kinetic-husky-simulator";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_simulator/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "b73fab3a02f9b15167f17f84fad8db790239a4d8c35cb1d1c0aacf92656439bd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
