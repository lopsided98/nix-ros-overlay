
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, epos2-motor-controller, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-volksbot-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/volksbot_driver-release/archive/release/melodic/volksbot_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e6e0fa49a8ba75f9f7f8e784d53250f53779337d0fd4bda5274433bb54dfc271";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ epos2-motor-controller geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Volksbot robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
