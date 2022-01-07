
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, geometry-msgs, nav-msgs, roscpp, roslib, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-steering-functions";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/steering_functions-release/archive/release/melodic/steering_functions/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "800bb9121a562af00f81e20262a34e5263d9f28e99bd91bd6af68a1203341d09";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ costmap-2d eigen geometry-msgs nav-msgs roscpp roslib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The steering_functions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
