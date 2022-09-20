
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-laser-scan-publisher-tutorial";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/laser_scan_publisher_tutorial/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "c0b0218c7cd794f7c3a06cb85c2d8d3df2fce24a5a8ebea919021ec6084d98c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
