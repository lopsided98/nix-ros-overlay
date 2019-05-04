
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosjava-build-tools, tf2-msgs, sensor-msgs, catkin, rosjava-messages, rosjava-bootstrap, rosgraph-msgs, nav-msgs, rosjava-test-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-core";
  version = "0.3.7";

  src = fetchurl {
    url = https://github.com/rosjava-release/rosjava_core-release/archive/release/kinetic/rosjava_core/0.3.7-0.tar.gz;
    sha256 = "d1e862dbc3b04840f0c64d2498e38ad6d8e77d84327465dd02d3a4bca5c8f1bb";
  };

  buildInputs = [ rosjava-build-tools tf2-msgs sensor-msgs rosjava-messages rosjava-bootstrap rosgraph-msgs nav-msgs rosjava-test-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An implementation of ROS in pure-Java with Android support.'';
    license = with lib.licenses; [ asl20 ];
  };
}
