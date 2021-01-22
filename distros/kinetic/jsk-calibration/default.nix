
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, roseus }:
buildRosPackage {
  pname = "ros-kinetic-jsk-calibration";
  version = "0.1.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_calibration/0.1.14-0.tar.gz";
    name = "0.1.14-0.tar.gz";
    sha256 = "6044a830abc5ae15ef55b7062fd722fe0950199e6fabffccc38437cb17544f4b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-msgs roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_calibration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
