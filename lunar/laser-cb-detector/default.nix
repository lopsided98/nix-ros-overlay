
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, cv-bridge, message-filters, image-cb-detector, settlerlib, actionlib, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-laser-cb-detector";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/laser_cb_detector/0.10.14-0.tar.gz;
    sha256 = "8efb1704530c8485206815b70c0301f0606ae4ac9c2ec245debff3ba3ecad4d4";
  };

  buildInputs = [ roscpp settlerlib actionlib-msgs actionlib std-msgs cv-bridge message-filters image-cb-detector ];
  propagatedBuildInputs = [ roscpp settlerlib actionlib-msgs actionlib std-msgs cv-bridge message-filters image-cb-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extracts checkerboard corners from a dense laser snapshot.
     This package is experimental and unstable. Expect its APIs to change.'';
    #license = lib.licenses.BSD;
  };
}
