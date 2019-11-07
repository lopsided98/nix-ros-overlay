
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, roscpp, catkin }:
buildRosPackage {
  pname = "ros-melodic-laser-scan-publisher-tutorial";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/laser_scan_publisher_tutorial/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "a2ae17a2a286701f18239ceb8e8ce3723a45bf349ecfd3df1f4d085f25174fbd";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
