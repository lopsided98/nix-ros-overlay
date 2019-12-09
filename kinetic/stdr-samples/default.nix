
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, tf, roslib, catkin, stdr-msgs, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-stdr-samples";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_samples/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "ad1d00afd61790ecd3711da0614f6b85957cc0b117786253eef21e860d833079";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs nav-msgs tf roslib roscpp stdr-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs nav-msgs tf roslib roscpp stdr-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides sample codes to demonstrate STDR simulator functionalities.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
