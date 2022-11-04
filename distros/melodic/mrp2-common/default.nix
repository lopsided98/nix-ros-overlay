
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrp2-description, mrp2-navigation, mrp2-teleop }:
buildRosPackage {
  pname = "ros-melodic-mrp2-common";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_common-release/archive/release/melodic/mrp2_common/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "77c19936251d04af85bdbc6d3795d77c6c534a7aeaae13e9afcf044734141faf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrp2-description mrp2-navigation mrp2-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Necessary packages in common for both simulation and real environment.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
