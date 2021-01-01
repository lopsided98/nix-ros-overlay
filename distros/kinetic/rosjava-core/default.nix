
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rosgraph-msgs, rosjava-bootstrap, rosjava-build-tools, rosjava-messages, rosjava-test-msgs, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-core";
  version = "0.3.7";

  src = fetchurl {
    url = "https://github.com/rosjava-release/rosjava_core-release/archive/release/kinetic/rosjava_core/0.3.7-0.tar.gz";
    name = "0.3.7-0.tar.gz";
    sha256 = "d1e862dbc3b04840f0c64d2498e38ad6d8e77d84327465dd02d3a4bca5c8f1bb";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs nav-msgs rosgraph-msgs rosjava-bootstrap rosjava-build-tools rosjava-messages rosjava-test-msgs sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An implementation of ROS in pure-Java with Android support.'';
    license = with lib.licenses; [ asl20 ];
  };
}
