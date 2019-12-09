
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-filters, image-cb-detector, std-msgs, settlerlib, actionlib, catkin, cv-bridge, actionlib-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-laser-cb-detector";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/melodic/laser_cb_detector/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "84dfc40a2bed5cc329a50aba2e513550e8a8aa9de1b0d0719676e04ee3107d7e";
  };

  buildType = "catkin";
  buildInputs = [ message-filters image-cb-detector std-msgs settlerlib actionlib cv-bridge actionlib-msgs roscpp ];
  propagatedBuildInputs = [ message-filters image-cb-detector std-msgs settlerlib actionlib cv-bridge actionlib-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extracts checkerboard corners from a dense laser snapshot.
     This package is experimental and unstable. Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
