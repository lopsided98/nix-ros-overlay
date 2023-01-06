
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-dingo-navigation";
  version = "0.1.12-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_navigation/0.1.12-2.tar.gz";
    name = "0.1.12-2.tar.gz";
    sha256 = "350629950a4bae0680de0d049ab76c51dea5f60f341e515250c7eec7ff6eef94";
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
