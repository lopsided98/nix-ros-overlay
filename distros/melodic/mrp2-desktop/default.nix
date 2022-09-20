
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrp2-viz }:
buildRosPackage {
  pname = "ros-melodic-mrp2-desktop";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_desktop-release/archive/release/melodic/mrp2_desktop/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "5b88ab03947833528ff30c2794bf2539665b1a7e156e01837ad567f8ae1b93af";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrp2-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization tools and configurations for MRP2 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
