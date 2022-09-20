
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, geometry-msgs, nav-msgs, roscpp, roslib, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-steering-functions";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/steering_functions-release/archive/release/melodic/steering_functions/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "772db944a5ea71f75509a1facb08f315589bc2643dcc65261a3fc3465125c37c";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ costmap-2d eigen geometry-msgs nav-msgs roscpp roslib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The steering_functions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
