
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-joystick-interrupt";
  version = "0.17.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/joystick_interrupt/0.17.7-1.tar.gz";
    name = "0.17.7-1.tar.gz";
    sha256 = "4b268e195d7ab918c737a813ac999868b292033a7db6f6e5b342891133781575";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ geometry-msgs neonavigation-common roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Interrupt cmd_vel by joystick input";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
