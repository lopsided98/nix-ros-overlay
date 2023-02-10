
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-dingo-navigation";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/noetic/dingo_navigation/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "cc64308e97be52c047759499a8493d5a6b218e557ed6707a79f62df66ec955d9";
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
