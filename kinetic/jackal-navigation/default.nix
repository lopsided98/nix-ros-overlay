
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, map-server, catkin, gmapping, move-base, amcl, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-jackal-navigation";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_navigation/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "d42cf86af4666a1802fb3782112f26641a231ad5cddc30e11e75e21e8cf9fda1";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro urdf map-server gmapping move-base amcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
