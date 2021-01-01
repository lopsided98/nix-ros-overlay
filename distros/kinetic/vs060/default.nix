
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-ros-planning, roscpp, roslang }:
buildRosPackage {
  pname = "ros-kinetic-vs060";
  version = "2.0.3";

  src = fetchurl {
    url = "https://github.com/start-jsk/denso-release/archive/release/kinetic/vs060/2.0.3-0.tar.gz";
    name = "2.0.3-0.tar.gz";
    sha256 = "561344bcd209e4de9f51e2ade5eb61f661dfe0af43b472f2729ccda85fcdf6ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-commander moveit-ros-planning roscpp roslang ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>This package provides <a href="http://goo.gl/kL0vnf">ORiN</a>-based controller functionality for VS060, a Denso's virtical multi-joint robot.</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
