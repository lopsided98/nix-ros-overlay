
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, visp }:
buildRosPackage {
  pname = "ros-noetic-visp-bridge";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/noetic/visp_bridge/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "aa9ff1c9a82b8fb3f8fbcd27a43ffb4acafdf563da02fbe20c81b1d06605e3f5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-calibration-parsers geometry-msgs roscpp sensor-msgs std-msgs visp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between ROS structures and ViSP structures.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
