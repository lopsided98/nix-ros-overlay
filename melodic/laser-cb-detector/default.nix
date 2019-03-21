
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, cv-bridge, message-filters, image-cb-detector, settlerlib, actionlib, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-laser-cb-detector";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/melodic/laser_cb_detector/0.10.14-0.tar.gz;
    sha256 = "84dfc40a2bed5cc329a50aba2e513550e8a8aa9de1b0d0719676e04ee3107d7e";
  };

  propagatedBuildInputs = [ roscpp settlerlib actionlib-msgs actionlib std-msgs cv-bridge message-filters image-cb-detector ];
  nativeBuildInputs = [ actionlib-msgs cv-bridge message-filters catkin image-cb-detector settlerlib actionlib std-msgs roscpp ];

  meta = {
    description = ''Extracts checkerboard corners from a dense laser snapshot.
     This package is experimental and unstable. Expect its APIs to change.'';
    #license = lib.licenses.BSD;
  };
}
