
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, amcl, catkin, move-base, rostest, rviz, fake-localization, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-roomblock-navigation";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_navigation/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "9df21260ee4811b03420bf45df2c69e4900b602d7fb8c471c4ab30681970acac";
  };

  buildType = "catkin";
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ map-server amcl move-base rviz fake-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomblock_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
