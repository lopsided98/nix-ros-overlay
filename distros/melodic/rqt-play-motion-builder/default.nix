
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, class-loader, play-motion-builder, play-motion-builder-msgs, play-motion-msgs, qt5, roscpp, rqt-gui, rqt-gui-cpp, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-melodic-rqt-play-motion-builder";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-robotics/play_motion_builder-release/archive/release/melodic/rqt_play_motion_builder/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "36b45498a7420ef0806a1bf10d23e5b76b401e2486b33e5f6d504050999066f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin class-loader qt5.qtbase ];
  propagatedBuildInputs = [ actionlib play-motion-builder play-motion-builder-msgs play-motion-msgs roscpp rqt-gui rqt-gui-cpp sensor-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_play_motion_builder package, a front-end interface for play_motion_builder'';
    license = with lib.licenses; [ "LGPL-3.0" ];
  };
}
