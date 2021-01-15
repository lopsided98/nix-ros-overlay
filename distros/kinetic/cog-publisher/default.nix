
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, kdl-conversions, kdl-parser, roscpp, sensor-msgs, std-msgs, tf, tf2, tf2-geometry-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-kinetic-cog-publisher";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/cog_publisher-release/archive/release/kinetic/cog_publisher/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "15304f3b223acf45cbc5c8c5f5aaf16343ec71d15c5457134d2d1abe46dfa781";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs kdl-conversions kdl-parser roscpp sensor-msgs std-msgs tf tf2 tf2-geometry-msgs tf2-ros urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cog_publisher package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
