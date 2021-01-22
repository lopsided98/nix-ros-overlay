
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dense-laser-assembler, pr2-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-dense-laser-snapshotter";
  version = "1.0.11";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/pr2_dense_laser_snapshotter/1.0.11-0.tar.gz";
    name = "1.0.11-0.tar.gz";
    sha256 = "2575ada47fc86c87207483c2e467c999f6fc8142b28f93a2f59a455ef1e5f57e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dense-laser-assembler pr2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stores the data from a series of laser scan messages in a dense representation, allowing
     users to easily perform image-like operations on intensity or range data. This package is
     experimental. Expect APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
