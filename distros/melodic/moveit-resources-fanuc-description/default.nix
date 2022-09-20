
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-fanuc-description";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_fanuc_description/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "46d8b567f40435fb3f0026564caf94f0b36403c39e1feeaf7d0a493d478420af";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fanuc Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
