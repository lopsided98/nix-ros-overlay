
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cv-bridge, image-cb-detector, message-filters, roscpp, settlerlib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-laser-cb-detector";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/laser_cb_detector/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "26b15d9ddeb6561b5e177589d26635dfa00818578084ee553699660ed8ed4fdb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs cv-bridge image-cb-detector message-filters roscpp settlerlib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extracts checkerboard corners from a dense laser snapshot.
     This package is experimental and unstable. Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
