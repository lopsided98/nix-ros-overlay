
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geometry-msgs, mavros-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-gcs-interface";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/gcs_interface/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "2af3b879778ebf0fba590a0117165cb0828389b65ab40e332ee3c3f27b1ab514";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geographic-msgs geometry-msgs mavros-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ground Control Station Interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
