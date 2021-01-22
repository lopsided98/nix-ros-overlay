
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, fake-localization, map-server, move-base, roslaunch, rostest, rviz }:
buildRosPackage {
  pname = "ros-kinetic-roomblock-navigation";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_navigation/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "9df21260ee4811b03420bf45df2c69e4900b602d7fb8c471c4ab30681970acac";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ amcl fake-localization map-server move-base rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomblock_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
