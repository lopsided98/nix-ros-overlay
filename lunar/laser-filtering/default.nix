
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-laser }:
buildRosPackage {
  pname = "ros-lunar-laser-filtering";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/laser_filtering_release/archive/release/lunar/laser_filtering/0.0.4-0.tar.gz;
    sha256 = "81644b23937d4e50a28824ab8f39cd9ea797630ff46448e6df6117d932db8df6";
  };

  propagatedBuildInputs = [ map-laser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Libraries for filtering specific kinds of laser scans'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
