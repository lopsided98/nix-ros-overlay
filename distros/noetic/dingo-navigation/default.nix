
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-dingo-navigation";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/noetic/dingo_navigation/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "1ab35365c0cfefd6de61943e0a1b6ecb8457e4126e4c6eb040bf9ff4ac119924";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Dingo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
