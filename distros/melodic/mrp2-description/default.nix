
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-mrp2-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_common-release/archive/release/melodic/mrp2_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "013be584475464ae7a6cdb5808b43706a8eda7a1d658db790c9fea6d21c0f7fe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and xacro description files for MRP2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
