
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, visp }:
buildRosPackage {
  pname = "ros-kinetic-visp-bridge";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_bridge/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "295c0401fac1e2219382a0440398f43f3d61597c0fe8bafe3366df641f14bfe8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-calibration-parsers geometry-msgs roscpp sensor-msgs std-msgs visp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between ROS structures and ViSP structures.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
