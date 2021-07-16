
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-urg-stamped";
  version = "0.0.12-r2";

  src = fetchurl {
    url = "https://github.com/seqsense/urg_stamped-release/archive/release/melodic/urg_stamped/0.0.12-2.tar.gz";
    name = "0.0.12-2.tar.gz";
    sha256 = "6c47c85970feb0713ca00ae6fc35c5c6d2d0f43ada2fce002e70b5ddc632fb8f";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    license = with lib.licenses; [ asl20 ];
  };
}
