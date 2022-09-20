
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrp2-bringup, mrp2-display, mrp2-hardware }:
buildRosPackage {
  pname = "ros-melodic-mrp2-robot";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_robot-release/archive/release/melodic/mrp2_robot/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "06050be3904e8a666c39b134259e7cd3f67208496ba9bcf3f4844b32f620876e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrp2-bringup mrp2-display mrp2-hardware ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MRP2 robot description and launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
