
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-navigation";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_navigation/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "952dfdee87834cf3dc2d14b97b27f94f0ec2d583aae802de9320efc9fa81975b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
